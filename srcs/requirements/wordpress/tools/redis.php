  <?php
     //Connecting to Redis server on OVH
      $redis = new Redis();
      $redis->connect('redis', 6379);
      $redis->auth('born2redis');
      echo "Connection to server ongoing";
      //check whether server is running or not
      echo "Server is running: ".$redis->ping();
 ?>
