import { BaseEntity, Column, Entity, PrimaryColumn } from "typeorm";


@Entity()
export class OTPCode extends BaseEntity {
    @PrimaryColumn()
    email: string;

    @PrimaryColumn()
    authCode: string;

    @Column()
    expiry: Date;
}