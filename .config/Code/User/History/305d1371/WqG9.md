# Yank, Rplace, Put, Delete

> We want to the make the second function implemnts the same logic as the firs one, but with a different type.



```rs

fn add_int(a: i32, b: i32) -> i32 {
    let result = if a >= b || a + b == 40 { a + b + 10 } else { a + b - 10 } // y

    return result
}

fn add_float(a: f32, b: f32) -> f32 {


    //-------------------------------------// // p, P


    return fesumtrn // r, x
    // return animal // R
}

```


---


# Nouns (Motions) 

> w, }, $, 0, cw, c}, d$, y0, d2w, y2}, gU}, gu}

```html

The Stack and the Heap

1. Many programming languages don’t require you to think about the stack and the heap very often.
but in a systems programming language like rust, whether a value is on the stack or the heap affects how the language behaves and why you have to make certain decisions.
parts of ownership will be described in relation to the stack and the heap later in this chapter, so here is a brief explanation in preparation.

2. Both the stack and the heap are parts of memory available to your code to use at runtime, but they are structured in different ways.
The stack stores values in the order it gets them and removes the values in the opposite order.
This is referred to as last in, first out.
Think of a stack of plates: when you add more plates, you put them on top of the pile, and when you need a plate, you take one off the top.

3. Adding or removing plates from the middle or bottom wouldn’t work as well! Adding data is called pushing onto the stack, and removing data is called popping off the stack.
All data stored on the stack must have a known, fixed size.
Data with an unknown size at compile time or a size that might change must be stored on the heap instead.

4. The heap is less organized: when you put data on the heap, you request a certain amount of space. The memory allocator finds an empty spot in the heap that is big enough, marks it as being in use, and returns a pointer, which is the address of that location. This process is called allocating on the heap and is sometimes abbreviated as just allocating (pushing values onto the stack is not considered allocating). Because the pointer to the heap is a known, fixed size, you can store the pointer on the stack, but when you want the actual data, you must follow the pointer. Think of being seated at a restaurant. When you enter, you state the number of people in your group, and the host finds an empty table that fits everyone and leads you there. If someone in your group comes late, they can ask where you’ve been seated to find you.

5. Pushing to the stack is faster than allocating on the heap because the allocator never has to search for a place to store new data; that location is always at the top of the stack. Comparatively, allocating space on the heap requires more work because the allocator must first find a big enough space to hold the data and then perform bookkeeping to prepare for the next allocation.

```


## Nouns (Text Objects)

> 1. Change the following function to accept a name of a person and say hello, to him! (using text objects)

> ciw, ci

```js

function sayHello(age) {
    console.log(`Hello, ${age}!`)
}

```

> 2. rplace all the parameters inside the function by onyly the name of the user and print it

> ci( , ci{

```js

function sayHello(age, email, tNum, mNum) {
    console.log(`your age: , ${age}!`)
    console.log(`your email: , ${email}!`)
    console.log(`your telephone number: , ${tNum}!`)
    console.log(`your mobile number: , ${mNum}!`)
}


```




