import { Field, ObjectType } from "type-graphql";
import { BaseEntity, Column, CreateDateColumn, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { User } from "./User";

@ObjectType()
@Entity()
export class Recipe extends BaseEntity {
  @Field()
  @PrimaryGeneratedColumn("uuid")
  id!: string;

  @Field()
  @Column()
  name!: string;

  @Field()
  @Column({ default: '' })
  instructions!: string;

  @Field()
  @Column({ default: '' })
  ingredients!: string;

  @Field()
  @Column({ default: '' })
  info!: string;

  @ManyToOne(() => User, user => user.recipes, {
    onDelete: 'CASCADE',
    onUpdate: 'CASCADE',
    createForeignKeyConstraints: true,
  })
  creator!: User;

  @Field()
  @Column()
  creatorId!: string;

  @Field()
  @CreateDateColumn({ type: 'timestamptz' })
  createdAt!: Date

}