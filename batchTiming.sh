#Default from Makefile
interactive=0		# 0=interactive, >0 is non-interactive

startX=10		# start configuration
startY=350
goalX=300		# goal configuration
goalY=20

epsilon=2		# resolution parameter
epsilon=10		# resolution parameter
radius=40		# robot radius
radius=30		# robot radius

inputDir=inputs	# where to find input files
fileName=input2.txt	# input environment file

boxWidth=512		# initial configuration box size
boxHt=512

windowPosX=200	# initial Window position
windowPosY=200	
windowPosX=450	# initial Window position
windowPosY=20	

			#	(0 = random, 1 = BFS, 3 = astar) 
seed=11		# seed for random
step=0		# number of steps to run
			#	(step=0 means run to completion)
xtrans=0		# x-translation of input file
ytrans=0		# y-translation of input file
scale=1		# scaling of input file


#Header
echo FileName,QType,RobotRadius,Epsilon,StartX,StartY,EndX,EndY,PathFound,TimeElapsed,DistanceTraveled,MinimumClearnace,NumExpansions,FreeBoxesCount,StuckBoxCount,MixBelowEpsilonCount,MixAboveEpsilonCount

#loops through QTypes 0 to 3
echo "eg900 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 450 500 450 20 \
		3 11 input2.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg901 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 250 300 450 20 \
		3 11 input2.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale 
	done
done

echo "eg902 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 125 200 450 20 \
		3 11 input2.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale 
	done
done

echo "eg903 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 125 210 450 20 \
		3 50 input2.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg904 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 375 350  425 100 \
		1 5 hsu-latombe-kurniawati.txt \
		$boxWidth $boxHt $windowPosX $windowPosY \
		$Qtype $seed  $inputDir \
		-70 -70 0.065
	done
done

echo "eg905 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 100 350  425 100 \
		1 5 hsu-latombe-kurniawati.txt \
		$boxWidth $boxHt $windowPosX $windowPosY \
		$Qtype $seed  $inputDir \
		-70 -70 0.065
	done
done

echo "eg906 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 100 350  425 100 \
		1 10 hsu-latombe-kurniawati.txt \
		$boxWidth $boxHt $windowPosX $windowPosY \
		$Qtype $seed  $inputDir \
		-70 -70 0.065
	done
done

echo "eg907 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 20 375 370 \
		2 5 input100.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg908 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 20 375 370 \
		2 5 input150.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg909 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 20 385 380 \
		2 5 input200.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale 
	done
done

echo "eg910 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 20 375 390 \
		2 5 input300.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale 
	done
done

echo "eg911 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 20 20 250 \
		2 5 input300.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg912 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 350 20 250 200 \
		2 5 input300.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg913 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 350 20 250 200 \
		2 8 input300.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg914 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 500 350 350 \
		2 8 bugtrap.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg915 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 75 250 150 250 \
		2 8 bugtrap.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg916 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 500 175 125 \
		2 8 bugtrap2.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

echo "eg917 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 500 375 125 \
		2 8 bugtrap2.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale 
	done
done

echo "eg918 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 500 300 105 \
		2 8 input4.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale 
	done
done

echo "eg919 Running" >&2
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 20 250 450 250 \
		2 8 input3.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype $seed $inputDir \
		$xtrans $ytrans $scale
	done
done

