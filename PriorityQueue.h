#pragma once
#include "Box.h"
#include <queue>
#include <vector>
#include <list>
#include <time.h>
#include <stdlib.h>
#include <iterator>
#include "Graph.h"
#include <math.h>

using namespace std;

extern double beta[2];
extern double blend;

class PQCmp
{
public:
	bool operator() (const Box* a, const Box* b)
	{
		//use depth for now
		if (a->depth > b->depth)
		{
			return true;
		}
		//if same depth, expand box created earlier first
		else if (a->depth == b->depth)
		{
			return a->priority > b->priority;
		}
		return false;
	}
};

//ADDED FOR GROUP 2
class PQCmpGroup2
{

public:

	bool operator() (const Box* a, const Box* b)
	{

		// currently very interesting behavior: prioritizes quads with 2 features and avoids quads with 0,1 features at all costs
		// but we dont really understand why this works so well

		float minDist = 10000000;
		float secondMinDist = 10000000;
		
		
		// a->cleanFeatures;
		// b->cleanFeatures;


		//continue here~!!!!!
		



		double aDist = sqrt((a->x - beta[0])*(a->x - beta[0]) + (a->y - beta[1])*(a->y - beta[1]));
		double bDist = sqrt((b->x - beta[0])*(b->x - beta[0]) + (b->y - beta[1])*(b->y - beta[1]));
		double avgDist = (aDist + bDist) / 2;

		aDist /= avgDist;
		bDist /= avgDist;

		float aFeatureDiff = a->featureNumber;
		float bFeatureDiff = b->featureNumber;

		float avgFeatureDiff = (aFeatureDiff + bFeatureDiff)/2;

		aFeatureDiff /= avgFeatureDiff;
		bFeatureDiff /= avgFeatureDiff;

		// if (a->featureNumber <= 1) aFeatureDiff = 10000;
		// if (b->featureNumber <= 1) bFeatureDiff = 10000;

		
		double weight = blend;
		double aScore = weight * aDist + (1 - weight) * aFeatureDiff;
		double bScore = weight * bDist + (1 - weight) * bFeatureDiff;

		return aScore < bScore;
	}
};
//END GROUP 2 ADD


class BoxQueue
{
private:

public:

	BoxQueue(void)
	{
	}

	virtual void push(Box* b) = 0;

	virtual Box* extract() = 0;

	virtual bool empty() = 0;

	virtual int size() = 0;

	~BoxQueue(void)
	{
	}
};

class seqQueue : public BoxQueue
{
private:
	priority_queue<Box*, vector<Box*>, PQCmp> PQ;
public:
	void push(Box* b)
	{
		PQ.push(b);
	}

	Box* extract()
	{
		Box* r = PQ.top();
		PQ.pop();
		return r;
	}

	bool empty()
	{
		return PQ.empty();
	}

	int size()
	{
		return PQ.size();
	}
};

class randQueue : public BoxQueue
{
private:
	list<Box*> L;
	int Qseed;

public:
	randQueue(int s): Qseed(s) {
		//srand( time(0) );
		srand( Qseed ); 
	}

	void push(Box* b)
	{
		L.push_back(b);
	}

	Box* extract()
	{
		int i = rand() % L.size();
		list<Box*>::iterator iter = L.begin();
		advance(iter, i);
		Box* r = *iter;
		L.erase(iter);
		return r;
	}

	bool empty()
	{
		return L.empty();
	}

	int size()
	{
		return L.size();
	}

};

class dijkstraQueue : public BoxQueue
{
private:
	vector<Box*> bv;

public:

	void push(Box* b)
	{
		distHeap<PQCmp3>::insert(bv, b);
	}

	Box* extract()
	{
		Box* current = distHeap<PQCmp3>::extractMin(bv);
		return current;
	}

	bool empty()
	{
		return bv.empty();
	}

	int size()
	{
		return bv.size();
	}
};

//ADDED BY GROUP 2
class vorQueue : public BoxQueue
{
private:
	priority_queue<Box*, vector<Box*>, PQCmpGroup2> PQ;
public:
	void push(Box* b)
	{
		PQ.push(b);
	}

	Box* extract()
	{
		Box* r = PQ.top();
		PQ.pop();
		return r;
	}

	bool empty()
	{
		return PQ.empty();
	}

	int size()
	{
		return PQ.size();
	}
};
//END GROUP 2 ADD

//ADDED BY GROUP 2
class vorDijkstraQueue : public dijkstraQueue
{
private:
	vector<Box*> bv;

public:

	void push(Box* b)
	{
		distHeap<PQCmpGroup2>::insert(bv, b);
	}

	Box* extract()
	{
		Box* current = distHeap<PQCmpGroup2>::extractMin(bv);
		return current;
	}

	bool empty()
	{
		return bv.empty();
	}

	int size()
	{
		return bv.size();
	}
};
//END GROUP 2 ADD