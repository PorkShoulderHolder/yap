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

			#	0 = random, 1 = BFS, 3 = astar 
seed=11		# seed for random
step=0		# number of steps to run
			#	step=0 means run to completion
xtrans=0		# x-translation of input file
ytrans=0		# y-translation of input file
scale=1		# scaling of input file


#Header
echo FileName,QType,RobotRadius,Epsilon,StartX,StartY,EndX,EndY,PathFound,TimeElapsed,DistanceTraveled,MinimumClearnace,NumExpansions,FreeBoxesCount,StuckBoxCount,MixBelowEpsilonCount,MixAboveEpsilonCount

#loops through QTypes 0 to 3
for Qtype in {0..3}
do
	#Number of runs per iteration 1...X
	for c in {0..10}
	do
		./disc 2 200 350 30 30 \
		4 10 bugtrap.txt \
		512 512 $windowPosX $windowPosY \
		$Qtype 11 $inputDir \
		$xtrans $ytrans $scale
	done
done

