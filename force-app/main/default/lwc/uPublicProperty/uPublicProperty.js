import { LightningElement, api } from 'lwc';

export default class UPublicProperty extends LightningElement {
    @api meetingRoomInfo; //{roomName: A-01, roomCapacity: 14}
}