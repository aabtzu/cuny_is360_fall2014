#Suppose that you have five customers – James, Mary, Steve, Alex, and Patricia – in line at a store. Use R operations to perform the following tasks in sequence.

#1. Assign the five individuals to a vector called queue.
queue = c("James","Mary","Steve","Alex","Patricia")
print ("#1. Assign the five individuals to a vector called queue.")
print (queue)

#2. Update the queue for the arrival of a new patron named Harold.
queue = c(queue,"Harold")
print ("#2. Update the queue for the arrival of a new patron named Harold.")
print (queue)

#3. Update the queue to reflect the fact that James has finished checking out.
queue = queue [ queue != "James" ]
print ("#3. Update the queue to reflect the fact that James has finished checking out.")
print (queue)

#4. Update the queue to reflect the fact that Patricia has talked her way in front of Steve with just one item.
print("#4. Update the queue to reflect the fact that Patricia has talked her way in front of Steve with just one item.")
posPatricia = match("Patricia",queue) # find Patricia
posSteve = match("Steve",queue) # find Steve
queue[(posSteve+1):posPatricia ] = queue[posSteve:(posPatricia-1)] # move Steve back in queue
queue[posSteve] = 'Patricia'
print(queue)

#5. Update the queue to reflect the fact that Harold has grown impatient and left.
queue = queue [ queue != "Harold" ]
print ("#5. Update the queue to reflect the fact that Harold has grown impatient and left.")
print (queue)

#6. Update the queue to reflect the fact that Alex has grown impatient and left. (Do this as if you do not know what slot Alex currently occupies by number.)
queue = queue [ queue != "Alex" ]
print ("#6. Update the queue to reflect the fact that Alex has grown impatient and left. (Do this as if you do not know what slot Alex currently occupies by number.)")
print (queue)

#7. Identify the position of Patricia in the queue.
print ("#7. Identify the position of Patricia in the queue.")
print (match("Patricia",queue))

#8. Count the number of people in the queue.
print ("#8. Count the number of people in the queue.")
print (length(queue))


