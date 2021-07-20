import { Injectable } from '@nestjs/common';
import { Client, Environment } from 'square';

@Injectable()
export class SquareService {
  client: Client;

  constructor() {
    this.client = new Client({
      environment: Environment.Sandbox,
      accessToken: process.env.SQUARE_ACCESS_TOKEN,
    });
  }
}
