import timg

obj = timg.Renderer()                                                                                               
obj.load_image_from_file("test.png")                                                                                
obj.resize(100,40)
obj.render(timg.ASCIIMethod)