to move-intelligentA
  if(algorithm = "intelligent") [
    ask turtles [
      ifelse (can-move? 1) and [pcolor] of patch-ahead 1 != brown
      [
        fd 1
        if (distance (min-one-of (patches with [pcolor = grey]) [distance myself]) ) <= 3
        [
          face min-one-of patches with [ pcolor = grey ] [ distance myself ]
          ]
      ]
      [;bounce
        right random 360
        ]
    ]
  ]
end

