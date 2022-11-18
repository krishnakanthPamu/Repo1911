import { LightningElement, api } from 'lwc';

export default class UMeetingRoom extends LightningElement {
    @api meetingRoomInfo; //{roomName: A-01, roomCapacity: 14}
    @api showMeetingRoom;
}