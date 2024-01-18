import { LightningElement,track } from 'lwc';

export default class CreateContactName extends LightningElement {
    @track
    contacts = [
        {
            Id:1,
            Name: 'Karthi Keyan',
            Title: 'Head House',
        },
        {
            Id:2,
            Name: 'Sofia Karthi',
            Title: 'Head House 2',
        },
    ];
}