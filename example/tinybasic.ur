
fun main () = return <xml><body>
      <active code={ck <- Tinymce.editor {Width = Tinymce.DefaultSize,
                                           Height = Tinymce.Percent 50,
                                          Inline = Tinymce.Inline False,
					  ToolbarSet=
					  let
					      val top = Tinymce.Bar{Buttons=(Tinymce.Bold :: Tinymce.Italic :: Tinymce.Separator :: [])}
					      val bottom = Tinymce.Bar{Buttons=(Tinymce.Save :: [])}
				              val menu = Tinymce.Stack{MenuName = Some "newMenuItem",Title = Some "newmenu", Buttons = (Tinymce.Link :: Tinymce.Redo :: [])}
			                  in					      
					  Tinymce.CustomizeToolbar(top :: bottom :: menu :: Tinymce.ToolbarN :: [])
					  end,
					  InitialText = ""};
                    return (Tinymce.show ck)}/>
    </body></xml>

