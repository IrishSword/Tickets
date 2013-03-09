<?php
##echo '<table border="1">
echo '<thead>
         <tr>
         <th>Events</th>
         <th>Games</th>
         <th>GM Teams</th>
         <th>SYSTEMs</th>
         <th>START TIMEs</th>
         <th>Ttl HRS</th>
         <th>MIN</th>
         <th>MAX</th>
         <th>PREREG</th>
         <th>ORIG</th>
         <th>GEN</th>
         <th>TTL</th>
         <th>ENV</th>
         </tr>
         </thead>
     ';
echo '<tr align="center">';
echo "   <td>$count</td>
         <td>$unique_title</td>
         <td>$unique_gm</td>
         <td>$unique_system</td>
         <td>$unique_start</td>
         <td>$sum_hours</td>
         <td>$sum_min</td>
         <td>$sum_max</td>
         <td>$sum_prereg_avail</td>
         <td>$sum_original</td>
         <td>$sum_generic</td>
         <td>$sum_total</td>
         <td>$sum_turnin</td>
         </tr>
     ";

echo '<tr align="center">';
echo "<td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td>% of Max</td>
         <td>$prereg_perc%</td>
         <td>$original_perc%</td>
         <td>$generic_perc%</td>
         <td>$total_perc%</td>
         <td>$turnin_perc%</td>
         </tr>
         </tr></table>
     ";


echo '</table>';
?>