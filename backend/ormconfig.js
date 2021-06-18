module.exports = [
  {
    name: "old-development",
    type: "sqlite",
    database: "database.sqlite",
    synchronize: true,
    logging: true,
    entities: ["src/entity/**/*.ts"],
    migrations: ["src/migration/**/*.ts"],
    subscribers: ["src/subscriber/**/*.ts"],
    // entities: ["dist/entity/**/*.js"],
    // migrations: ["dist/migration/**/*.js"],
    // subscribers: ["dist/subscriber/**/*.js"],
    cli: {
      entitiesDir: "src/entity",
      migrationsDir: "src/migration",
      subscribersDir: "src/subscriber"
      // entitiesDir: "dist/entity",
      // migrationsDir: "dist/migration",
      // subscribersDir: "dist/subscriber"
    }
  },
  {
    name: "development",
    type: "postgres",
    database: "cook-soc-db",
    username: 'postgres',
    password: 'postgres',
    synchronize: true,
    logging: true,
    // entities: ["src/entity/**/*.ts"],
    // migrations: ["src/migration/**/*.ts"],
    // subscribers: ["src/subscriber/**/*.ts"],
    entities: ["dist/entity/**/*.js"],
    migrations: ["dist/migration/**/*.js"],
    subscribers: ["dist/subscriber/**/*.js"],
    cli: {
      // entitiesDir: "src/entity",
      // migrationsDir: "src/migration",
      // subscribersDir: "src/subscriber"
      entitiesDir: "dist/entity",
      migrationsDir: "dist/migration",
      subscribersDir: "dist/subscriber"
    }
  },
  {
    name: "production",
    type: "postgres",
    url: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false,
    },
    synchronize: true,
    logging: false,
    entities: ["dist/entity/**/*.js"],
    migrations: ["dist/migration/**/*.js"],
    subscribers: ["dist/subscriber/**/*.js"],
    cli: {
      entitiesDir: "dist/entity",
      migrationsDir: "dist/migration",
      subscribersDir: "dist/subscriber"
    }
  }
];
