import Cocoa

var bucketList = ["Climb Mt. Everest"]
bucketList.append("Read War and Peace")
bucketList.append("Scuba dive in the great blue hole")
bucketList.append("Go on an Arctic expedition")
bucketList.remove(at: 1)
bucketList[2] += " with friends"
bucketList.insert("Toboggan across Alaska", at: 1)
bucketList.count

print(bucketList[...2])

var newItems = ["Bike across America", "Make a perfect souffle", "Solve Fermat's enigma"]
bucketList += newItems
print(bucketList)
