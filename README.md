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


## process

To identify which rows are identical, I have built this mark down structure below:


    |                   |       |                   | Widgets |                   |       |                   |
    |-------------------|-------|-------------------|---------|-------------------|-------|-------------------|
    |                   |       |                   |         |                   |       |                   |
    |                   | Tesco |                   |         |                   | Asada |                   |
    | Gross Sales Price |       | Distribution Cost |         | Gross Sales Price |       | Distribution Cost |

I looked at this structure as a one-to-many relationship where each node has only one parent but possibly multiple children.
This structure can than be used across many products and I am able to identify the overlapping dates easily.
The table its self looks like a relational database because of the uniq id for rows.
I was a bit thrown by the formate of the dates but after some google and looking through old projects.
I remembered the formats for dates in a database are displayed this way.
All products are Widgets, there are only two Customers (Tesco & Asada) and the means of Measure are two also ( Gross Sales Price & Distribution Cost ).
Within the table, I noticed in ROW 7 the "Valid From Day" & "Valid To Day" have long single digits which I believe suggests a NULL value.
I think the values were not given and an SQL command to amend that could be *ALTER TABLE exceedra
MODIFY Value int NOT NULL;* to make sure a value is entered in this column.

The structure above should allow me to then get a split set of data which have a hierarchical structure as:

  * *Product => Customer => Measure => Value => Valid From Day*


    *Tesco - Gross Sales Price*

  | Value | Valid From Day | Valid To Day |
  |-------|----------------|--------------|
  | 1     | 20130101       | 20130401     |
  | 1.5   | 20130301       | 20131231     |
  | 2     | 20130401       | 20150101     |

    *Tesco - Distribution Cost*

  | Value | Valid From Day | Valid To Day |
  |-------|----------------|--------------|
  | 5     | 20130101       | 20130401     |
  | 6     | 20130301       | 20140401     |
  | 7     | 20131231       | 20150101     |

    *Asda - Gross Sales Price*

  | Value | Valid From Day | Valid To Day |
  |-------|----------------|--------------|
  | 100   | 00000000       | 99999999     |
  | 200   | 20131231       | 20150101     |

    *Asda - Distribution Cost*

  | Value | Valid From Day | Valid To Day |
  |-------|----------------|--------------|
  | 2     | 20130301       | 20131231     |
  | 3     | 20140401       | 20150101     |


*( The dates aren't very clear and one of the dates are of NULL )*


## Solution

Having looked at the data from the table, I had noticed the overlapping date ranges for rows "1 & 2" and "5 & 6". I wasn't sure how to best approach this and googled a few SQL queriers.
