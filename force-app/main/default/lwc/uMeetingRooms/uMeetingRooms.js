import { LightningElement } from 'lwc';

export default class UMeetingRooms extends LightningElement {
    meetingRooms = [
        {roomName: 'A-01', roomCapacity: '14'},
        {roomName: 'A-02', roomCapacity: '12'},
        {roomName: 'A-03', roomCapacity: '11'},
        {roomName: 'B-01', roomCapacity: '14'},
        {roomName: 'B-02', roomCapacity: '5'},
        {roomName: 'B-03', roomCapacity: '12'},
        {roomName: 'C-01', roomCapacity: '12'},
        {roomName: 'C-02', roomCapacity: '10'},
		];
}