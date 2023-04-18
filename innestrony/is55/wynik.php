        <?php
            if(isSet($_POST['s']))
            {
                $imie=$_POST['imie'];
                $marka=$_POST['marka'];
                echo "$imie, twóją ulubioną marką samochodu to: $marka";
            }
            if(isSet($_POST['l']))
            {
                $a=$_POST['a'];
                $b=$_POST['b'];
                $c=$_POST['c'];
                if($a<$b && $a<$c){
                    echo $a;
                }
                if($b<$a && $b<$c){
                    echo $b;
                }
                if($c<$b && $c<$a){
                    echo $c;
                }
            }
        ?>