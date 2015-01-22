{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 563.0, 132.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"annotation" : "qmetro interval for jit.gl.render object",
					"hint" : "qmetro interval",
					"id" : "obj-26",
					"maxclass" : "number",
					"maximum" : 64,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 15.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"annotation" : "playlist of video loops - provides video texture vjlxnr.win.videotex; left inlet 0 stops playing, value >0 selects loop; outlet puts out a jit.matrix",
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "jit_matrix", "", "dictionary", "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 1006.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"annotation" : "right outlet of jit.gl.texture",
									"comment" : "right outlet of jit.gl.texture",
									"hint" : "right outlet of jit.gl.texture",
									"id" : "obj-8",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 591.0, 420.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "-> left inlet of jit.gl.texture",
									"comment" : "-> left inlet of jit.gl.texture",
									"hint" : "-> left inlet of jit.gl.texture",
									"id" : "obj-7",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 15.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "left outlet of jit.gl.texture",
									"comment" : "left outlet of jit.gl.texture",
									"hint" : "left outlet of jit.gl.texture",
									"id" : "obj-6",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 420.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 270.0, 375.0, 351.0, 22.0 ],
									"style" : "",
									"text" : "jit.gl.texture vjlxnr.win @name vjlxnr.win.videotex @dim 800 600"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "right outlet of jit.playlist",
									"comment" : "right outlet of jit.playlist",
									"hint" : "right outlet of jit.playlist",
									"id" : "obj-4",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 221.0, 420.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "middle outlet of jit.playlist",
									"comment" : "middle outlet of jit.playlist",
									"hint" : "middle outlet of jit.playlist",
									"id" : "obj-3",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.5, 420.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "left outlet of jit.playlist",
									"comment" : "left outlet of jit.playlist",
									"hint" : "left outlet of jit.playlist",
									"id" : "obj-2",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 420.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "-> left inlet of jit.playlist",
									"comment" : "-> left inlet of jit.playlist",
									"hint" : "-> left inlet of jit.playlist",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 15.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"clipheight" : 56.0,
									"data" : 									{
										"clips" : [ 											{
												"filename" : "putz.mp4",
												"filekind" : "moviefile",
												"loop" : 1,
												"content_state" : 												{
													"outputmode" : [ 1 ],
													"out_name" : [ "u448000318" ],
													"dim" : [ 1, 1 ],
													"loopstart" : [ 0 ],
													"looppoints" : [ 0, 0 ],
													"position" : [ 0.0 ],
													"usedstrect" : [ 0 ],
													"colormode" : [ "argb" ],
													"vol" : [ 1.0 ],
													"adapt" : [ 1 ],
													"output_texture" : [ 0 ],
													"srcrect" : [ 0, 0, 1, 1 ],
													"dstrect" : [ 0, 0, 1, 1 ],
													"unique" : [ 0 ],
													"texture_name" : [ "u377000316" ],
													"autostart" : [ 1 ],
													"engine" : [ "avf" ],
													"loopreport" : [ 0 ],
													"interp" : [ 0 ],
													"framereport" : [ 0 ],
													"automatic" : [ 0 ],
													"loopend" : [ 0 ],
													"time" : [ 0 ],
													"time_secs" : [ 0.0 ],
													"usesrcrect" : [ 0 ],
													"drawto" : [ "" ],
													"moviefile" : [ "" ],
													"rate" : [ 1.0 ]
												}

											}
, 											{
												"filename" : "platte.mp4",
												"filekind" : "moviefile",
												"loop" : 1,
												"content_state" : 												{
													"outputmode" : [ 1 ],
													"out_name" : [ "u448000318" ],
													"dim" : [ 1, 1 ],
													"loopstart" : [ 0 ],
													"looppoints" : [ 0, 0 ],
													"position" : [ 0.0 ],
													"usedstrect" : [ 0 ],
													"colormode" : [ "argb" ],
													"vol" : [ 1.0 ],
													"adapt" : [ 1 ],
													"output_texture" : [ 0 ],
													"srcrect" : [ 0, 0, 1, 1 ],
													"dstrect" : [ 0, 0, 1, 1 ],
													"unique" : [ 0 ],
													"texture_name" : [ "u377000316" ],
													"autostart" : [ 1 ],
													"engine" : [ "avf" ],
													"loopreport" : [ 0 ],
													"interp" : [ 0 ],
													"framereport" : [ 0 ],
													"automatic" : [ 0 ],
													"loopend" : [ 0 ],
													"time" : [ 0 ],
													"time_secs" : [ 0.0 ],
													"usesrcrect" : [ 0 ],
													"drawto" : [ "" ],
													"moviefile" : [ "" ],
													"rate" : [ 1.0 ]
												}

											}
, 											{
												"filename" : "schlitze.mp4",
												"filekind" : "moviefile",
												"loop" : 1,
												"content_state" : 												{
													"outputmode" : [ 1 ],
													"out_name" : [ "u448000318" ],
													"dim" : [ 1, 1 ],
													"loopstart" : [ 0 ],
													"looppoints" : [ 0, 0 ],
													"position" : [ 0.0 ],
													"usedstrect" : [ 0 ],
													"colormode" : [ "argb" ],
													"vol" : [ 1.0 ],
													"adapt" : [ 1 ],
													"output_texture" : [ 0 ],
													"srcrect" : [ 0, 0, 1, 1 ],
													"dstrect" : [ 0, 0, 1, 1 ],
													"unique" : [ 0 ],
													"texture_name" : [ "u377000316" ],
													"autostart" : [ 1 ],
													"engine" : [ "avf" ],
													"loopreport" : [ 0 ],
													"interp" : [ 0 ],
													"framereport" : [ 0 ],
													"automatic" : [ 0 ],
													"loopend" : [ 0 ],
													"time" : [ 0 ],
													"time_secs" : [ 0.0 ],
													"usesrcrect" : [ 0 ],
													"drawto" : [ "" ],
													"moviefile" : [ "" ],
													"rate" : [ 1.0 ]
												}

											}
, 											{
												"filename" : "teppich.mp4",
												"filekind" : "moviefile",
												"loop" : 1,
												"content_state" : 												{
													"outputmode" : [ 1 ],
													"out_name" : [ "u448000318" ],
													"dim" : [ 1, 1 ],
													"loopstart" : [ 0 ],
													"looppoints" : [ 0, 0 ],
													"position" : [ 0.0 ],
													"usedstrect" : [ 0 ],
													"colormode" : [ "argb" ],
													"vol" : [ 1.0 ],
													"adapt" : [ 1 ],
													"output_texture" : [ 0 ],
													"srcrect" : [ 0, 0, 1, 1 ],
													"dstrect" : [ 0, 0, 1, 1 ],
													"unique" : [ 0 ],
													"texture_name" : [ "u377000316" ],
													"autostart" : [ 1 ],
													"engine" : [ "avf" ],
													"loopreport" : [ 0 ],
													"interp" : [ 0 ],
													"framereport" : [ 0 ],
													"automatic" : [ 0 ],
													"loopend" : [ 0 ],
													"time" : [ 0 ],
													"time_secs" : [ 0.0 ],
													"usesrcrect" : [ 0 ],
													"drawto" : [ "" ],
													"moviefile" : [ "" ],
													"rate" : [ 1.0 ]
												}

											}
, 											{
												"filename" : "alufolie.mp4",
												"filekind" : "moviefile",
												"loop" : 1,
												"content_state" : 												{
													"outputmode" : [ 1 ],
													"out_name" : [ "u448000318" ],
													"dim" : [ 1, 1 ],
													"loopstart" : [ 0 ],
													"looppoints" : [ 0, 0 ],
													"position" : [ 0.0 ],
													"usedstrect" : [ 0 ],
													"colormode" : [ "argb" ],
													"vol" : [ 1.0 ],
													"adapt" : [ 1 ],
													"output_texture" : [ 0 ],
													"srcrect" : [ 0, 0, 1, 1 ],
													"dstrect" : [ 0, 0, 1, 1 ],
													"unique" : [ 0 ],
													"texture_name" : [ "u377000316" ],
													"autostart" : [ 1 ],
													"engine" : [ "avf" ],
													"loopreport" : [ 0 ],
													"interp" : [ 0 ],
													"framereport" : [ 0 ],
													"automatic" : [ 0 ],
													"loopend" : [ 0 ],
													"time" : [ 0 ],
													"time_secs" : [ 0.0 ],
													"usesrcrect" : [ 0 ],
													"drawto" : [ "" ],
													"moviefile" : [ "" ],
													"rate" : [ 1.0 ]
												}

											}
 ]
									}
,
									"id" : "obj-23",
									"maxclass" : "jit.playlist",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "jit_matrix", "", "dictionary" ],
									"patching_rect" : [ 30.0, 60.0, 210.0, 285.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.5, 365.0, 279.5, 365.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 420.0, 45.0, 138.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p vjlxnr.win.videoplaylist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 15.0, 105.0, 407.0, 22.0 ],
					"style" : "",
					"text" : "jit.gl.videoplane vjlxnr.win @transform_reset 2 @texture vjlxnr.win.videotex"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "manages the output window - ESC-key toggles fullscreen",
					"hint" : "manages the output window",
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 625.0, 525.0, 257.0, 188.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 15.0, 135.0, 197.0, 22.0 ],
									"style" : "",
									"text" : "jit.window vjlxnr.win @fsmenubar 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.0, 75.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 105.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "fullscreen $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 15.0, 45.0, 59.0, 22.0 ],
									"style" : "",
									"text" : "select 27"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 15.0, 15.0, 50.5, 22.0 ],
									"style" : "",
									"text" : "key"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.0, 75.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p vjlxnr.win.window"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "qmetro interval for jit.gl.render object",
					"hint" : "qmetro interval",
					"id" : "obj-21",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 85.0, 15.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"annotation" : "manages the render object - left inlet enables/disables rendering; right inlet sets qmetro interval; right outlet sends a bang prerender; left outlet sends a bang postrender",
					"hint" : "manages the render object",
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 1082.0, 101.0, 320.0, 349.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"annotation" : "bang prerender (also via [r prerender])",
									"comment" : "bang prerender (also via [r prerender])",
									"hint" : "bang prerender (also via [r prerender])",
									"id" : "obj-4",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.0, 170.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "bang postrender (also via [r postrender])",
									"comment" : "bang postrender (also via [r postrender])",
									"hint" : "bang postrender (also via [r postrender])",
									"id" : "obj-3",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.000004, 275.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"annotation" : "set render qmetro interval",
									"comment" : "set render qmetro interval",
									"hint" : "set render qmetro interval",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 15.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 79.333336, 215.0, 175.666672, 49.0 ],
									"style" : "",
									"text" : "jit.gl.render vjlxnr.win @sync 1 @smooth_shading 1 @erase_color 0 0 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.000004, 275.0, 77.0, 22.0 ],
									"style" : "",
									"text" : "s postrender"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.666664, 170.0, 72.0, 22.0 ],
									"style" : "",
									"text" : "s prerender"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "erase" ],
									"patching_rect" : [ 60.0, 105.0, 77.0, 22.0 ],
									"style" : "",
									"text" : "t b b b erase"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 60.0, 75.0, 65.0, 22.0 ],
									"style" : "",
									"text" : "qmetro 33"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "enable render qmetro",
									"comment" : "enable render qmetro",
									"hint" : "enable render qmetro",
									"id" : "obj-19",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 60.0, 15.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 127.5, 144.0, 88.0, 144.0, 88.0, 163.0, 88.833336, 163.0 ],
									"source" : [ "obj-5", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 245.0, 34.500004, 245.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 108.166667, 162.0, 184.5, 162.0 ],
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.0, 45.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p vjlxnr.win.render"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 15.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"embedsnapshot" : 0
	}

}
