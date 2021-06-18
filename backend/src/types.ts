import { Request, Response } from "express"
import { Jwt } from "njwt"
import { User } from "./entity/User"

export type MyContext = {
    req: Request,
    res: Response,
    jwt?: Jwt,
    user?: User,
}