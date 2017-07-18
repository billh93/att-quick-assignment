import React, {Component} from 'react';
import JsonTable from 'react-json-table';
import './App.css';

class App extends Component {
    render() {
        var table_data = [
            {
                first_name: 'Rose',
                last_name: 'Tyler',
                home: 'Earth'
            }, {
                first_name: 'Zoe',
                last_name: 'Heriot',
                home: 'Space Station W3'
            }, {
                first_name: 'Jo',
                last_name: 'Grant',
                home: 'Earth'
            }, {
                first_name: 'Leela',
                last_name: null,
                home: 'Unspecified'
            }, {
                first_name: 'Romana',
                last_name: null,
                home: 'Gallifrey'
            }, {
                first_name: 'Clara',
                last_name: 'Oswald',
                home: 'Earth'
            }, {
                first_name: 'Adric',
                last_name: null,
                home: 'Alzarius'
            }, {
                first_name: 'Susan',
                last_name: 'Foreman',
                home: 'Gallifrey'
            }
        ];
        var columns = [
            {
                key: 'first_name',
                label: 'First Name'
            }, {
                key: 'last_name',
                label: 'Last Name'
            }, {
                key: 'home',
                label: 'Home'
            }
        ];
        return (<JsonTable rows={table_data} columns={columns}/>);
    }
}

export default App;
