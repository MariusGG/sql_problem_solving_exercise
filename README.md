# sql_problem_solving_exercise


## Instructions
Create a process which solves parts A and B below; and then answer part C. Document your work using either a flowchart, pseudo-code, a written sequence of steps, or a programming language you are familiar with. The table below is example data, but your solution should be generic and hence applicable to any data supplied in this format.

	* Identify which pairs of rows have identical Products, Customers and Measures,
  and overlapping date ranges; e.g., as per rows 1 and 2.

	* Of the rows identified in part A, update the rows to make the date ranges not overlap.

	* Document any assumptions or decisions you needed to make for your solution.


  <table class="tg">
  <tr>
    <th >Row ID</th>
    <th >Products</th>
    <th >Customers</th>
    <th >Measure</th>
    <th >Value</th>
    <th >Valid From Day</th>
    <th >Valid To Day</th>
  </tr>
  <tr>
    <td >1</td>
    <td >Widgets</td>
    <td >Tesco</td>
    <td >Gross Sales Price</td>
    <td >1</td>
    <td >20130101</td>
    <td >20130401</td>
  </tr>
  <tr>
    <td >2</td>
    <td >Widgets</td>
    <td >Tesco</td>
    <td >Gross Sales Price</td>
    <td >1.5</td>
    <td >20130301</td>
    <td >20131231</td>
  </tr>
  <tr>
    <td >3</td>
    <td >Widgets</td>
    <td >Tesco</td>
    <td >Gross Sales Price</td>
    <td >2</td>
    <td >20130401</td>
    <td >20150101</td>
  </tr>
  <tr>
    <td >4</td>
    <td >Widgets</td>
    <td >Tesco</td>
    <td >Distribution Cost</td>
    <td >5</td>
    <td >20130101</td>
    <td >20130401</td>
  </tr>
  <tr>
    <td >5</td>
    <td >Widgets</td>
    <td >Tesco</td>
    <td >Distribution Cost</td>
    <td >6</td>
    <td >20130301</td>
    <td >20140401</td>
  </tr>
  <tr>
    <td >6</td>
    <td >Widgets</td>
    <td >Tesco</td>
    <td >Distribution Cost</td>
    <td >7</td>
    <td >20131231</td>
    <td >20150101</td>
  </tr>
  <tr>
    <td >7</td>
    <td >Widgets</td>
    <td >Asada</td>
    <td >Gross Sales Price</td>
    <td >100</td>
    <td >00000000</td>
    <td >99999999</td>
  </tr>
  <tr>
    <td >8</td>
    <td >Widgets</td>
    <td >Asada</td>
    <td >Gross Sales Price</td>
    <td >200</td>
    <td >20131231</td>
    <td >20150101</td>
  </tr>
  <tr>
    <td >9</td>
    <td >Widgets</td>
    <td >Asada</td>
    <td >Distribution Cost</td>
    <td >2</td>
    <td >20130301</td>
    <td >20131231</td>
  </tr>
  <tr>
    <td >10</td>
    <td >Widgets</td>
    <td >Asada</td>
    <td >Distribution Cost</td>
    <td >3</td>
    <td >20140401</td>
    <td >20150101</td>
  </tr>
</table>
