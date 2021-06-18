import { Field, ObjectType } from "type-graphql";
import { Entity, PrimaryGeneratedColumn, Column, CreateDateColumn, UpdateDateColumn, BaseEntity, OneToMany } from "typeorm";
import { Recipe } from "./Recipe";

@ObjectType()
@Entity()
export class User extends BaseEntity {
  @Field()
  @PrimaryGeneratedColumn('uuid')
  id!: string;

  @Field()
  @Column({ default: '' })
  name!: string;

  @Field()
  @Column()
  email!: string;

  @Field()
  @CreateDateColumn({ type: 'timestamptz' })
  createdAt!: Date

  @UpdateDateColumn({ type: 'timestamptz' })
  updatedAt!: Date

  @Field()
  @Column({ default: false })
  isComittee!: boolean;

  @Column({ default: '' })
  authSignSecret!: string

  @OneToMany(() => Recipe, recipe => recipe.creator)
  recipes!: Recipe[];

}
