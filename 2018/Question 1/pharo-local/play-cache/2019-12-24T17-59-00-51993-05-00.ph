inputList := #(3 -1 0 1).numberOfVillages := (inputList at: 1).villageList := (Array new: numberOfVillages).1 to: numberOfVillages do:[	:i | 	villageList at: i put: (inputList at: (i+1))	].sortedVillageList := villageList sorted.smallestVillage := 1000000000.1 to: numberOfVillages do:[	:i | 	(i > 1 )ifTrue: [ 		(i < numberOfVillages)ifTrue:[			midpoint1 := (((sortedVillageList at: (i-1)) + (sortedVillageList at: (i)))/2).			midpoint2 := (((sortedVillageList at: (i+1)) + (sortedVillageList at: (i)))/2).			villageSize := (midpoint2 - midpoint1).			"Transcript cr show: midpoint1.			Transcript cr show: midpoint2.			Transcript cr show: villageSize.			Transcript cr show: '-------------------------'."			(villageSize < smallestVillage)ifTrue: [ 				smallestVillage := villageSize				 ]			]		]	].Transcript cr show: smallestVillage.