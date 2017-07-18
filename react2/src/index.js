import React, {Component} from 'react';
import ReactDOM from 'react-dom';
import {Table} from 'semantic-ui-react';

const table_data = [{
        first_name: 'Rose',
        last_name: 'Tyler',
        home: 'Earth'
    },
    {
        first_name: 'Zoe',
        last_name: 'Heriot',
        home: 'Space Station W3'
    },
    {
        first_name: 'Jo',
        last_name: 'Grant',
        home: 'Earth'
    },
    {
        first_name: 'Leela',
        last_name: null,
        home: 'Unspecified'
    },
    {
        first_name: 'Romana',
        last_name: null,
        home: 'Gallifrey'
    },
    {
        first_name: 'Clara',
        last_name: 'Oswald',
        home: 'Earth'
    },
    {
        first_name: 'Adric',
        last_name: null,
        home: 'Alzarius'
    },
    {
        first_name: 'Susan',
        last_name: 'Foreman',
        home: 'Gallifrey'
    }
];

class DataTableRow extends Component {
    render() {
	    {/* Where we store all of our data from our object. */}
        const data = this.props.data; 
        {/* This is essentially a for loop specifically designed for objects that iterates our data for us. */}
        const row = data.map((data, i) => 
        <Table.Row key={i}>
        	<Table.Cell key={data.first_name}>{data.first_name}</Table.Cell>
			<Table.Cell key={data.last_name}>{data.last_name}</Table.Cell>
			<Table.Cell key={data.home}>{data.home}</Table.Cell>
        </Table.Row>);
        return (
            <Table.Body>{row}</Table.Body>
        );
    }
}

class DataTable extends Component {
    render() {
        return (
	        <Table striped>
		      <Table.Header>
		        <Table.Row>
		          <Table.HeaderCell>First Name</Table.HeaderCell>
		          <Table.HeaderCell>Last Name</Table.HeaderCell>
		          <Table.HeaderCell>Home</Table.HeaderCell>
		        </Table.Row>
		      </Table.Header>
		      {/* We load our DataTableRow component to our DataTable Component */}
              <DataTableRow data={this.props.data}/>
            </Table>
        );
    }
}

ReactDOM.render(
    <DataTable data={table_data}/>, document.getElementById("root"));
