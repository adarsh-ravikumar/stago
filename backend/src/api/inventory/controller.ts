import type { Request, Response } from "express";

export function TestQuery(req: Request, res: Response) {
  return res.send("<h1>Hello World!</h1><h2> This is the inventory endpoint!</h2>");
}
