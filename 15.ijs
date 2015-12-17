load'regex'
Matrix=: |: ".every ('-?\d+'&rxall);._2 fread'15.txt'
MatrixT=: |: ".every ('-?\d+'&rxall);._2 fread'15sample.txt'

scorest=: 3 : 0
  result=:0
  Tspns=: ,:0 0
  for_i. i.>:y do.
        Prop=:(MatrixT) (+/ .*) i,y-i
        if. 500 = {: Prop do.
          result=: result, (*/)`0:@.(_1 e. *) }: Prop
        end.
        NB.echo Tspns
  end.
  result
)
 
scores=: 3 : 0
  result=:0
  for_i. i.>:y do.
    for_j. i.y-i do.
      for_k. i.y-i+j do.
        Prop=:(Matrix) (+/ .*) Tspns=:i,j,k,y-i+j+k
        if. 500 = {: Prop do.
          result=: result, (*/)`0:@.(_1 e. *) }: Prop
        end.
        NB.echo Tspns
      end.
    end.
  end.
  result
)
NB.split2=: (] , (,: |.)@i.@:>:@:-) "0 0
NB.split2=: (,: |.)@:i.@:>: "0
NB.split3=: ([ <@split2 i.@>:)
NB.> ,.each/ split3 100
 NB.split2=: (,: |.)@:i.@:>:
