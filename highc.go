package main
import "fmt"


func main(){

    var min int64
    var max int64

    var highest int64 = -1

    fmt.Print("Minimum Value: ")
    fmt.Scanf("%d", &min)
    fmt.Print("Maximum Value: ")
    fmt.Scanf("%d", &max)

    for i:=min; i<=max; i++ {

        var sequence_size int64 = 0
        var x int64 = i
        x = i
        for x != 1{
            for (x&1)==1{
                if(x > highest){
                    highest = x
                }
                x = (3*x+1)
                sequence_size+= 2
            } 
            for (x&1)==0{
                if(x > highest){
                    highest = x
                }
                x/=2
                sequence_size+=1
            }
        }

    }

    fmt.Println(highest)
   
}
