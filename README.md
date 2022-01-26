#  Bunnymark Mk II

## Introduction

The BunnyMark benchmark is an extremely simple benchmarking script used by a lot of JS graphics engines like PixiJS, EaselJS etc. In this benchmark sprites are spawned and moved around the screen. Roughly, the idea is to spawn the maximum possible number of sprites while keeping the fps at 60.
My version heavily references the script written by the PixiJS guys.

## Run

Clone the repo, install love2d and run on the current dir:

```bash
love .
```

## Controls

Left click: Spawns a litter of bunnies (default minimum 1000)
Scroll wheel: Decrease or increase the bunny number

## Copyright

Copyright 2018, Rishav Sharan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Credits

orginal BunnyMark by to Iain Lobb @ http://blog.iainlobb.com/2010/11/display-list-vs-blitting-results.html
PixiJS Bunnymark by pixiJS @ https://www.goodboydigital.com/pixijs/bunnymark/
Bunny Image by Amanda Lobb @ http://amandalobb.com/
