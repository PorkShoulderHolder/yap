# Simple script to run batches of non-interactive simulations
inputFiles=("input0.txt" "input1.txt" "input2.txt")

#Header
echo FileName,QType,RobotRadius,Epsilon,StartX,StartY,EndX,EndY,PathFound,TimeElapsed,DistanceTraveled,MinimumClearnace,NumExpansions,FreeBoxesCount,StuckBoxCount,MixBelowEpsilonCount,MixAboveEpsilonCount

#loops through given files
for i in "${inputFiles[@]}"
do 
	#loops through QTypes 0 to 3
	for q in {0..3}
	do
		#Number of runs per iteration 1...X
		for c in {0..10}
		do
			./disc 2 $i $q
		done
	done
done
