#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# List of team names to insert
TEAMS=(
  "Algeria"
  "Argentina"
  "Belgium"
  "Brazil"
  "Chile"
  "Colombia"
  "Costa Rica"
  "Croatia"
  "Denmark"
  "England"
  "France"
  "Germany"
  "Greece"
  "Japan"
  "Mexico"
  "Netherlands"
  "Nigeria"
  "Portugal"
  "Russia"
  "Spain"
  "Sweden"
  "Switzerland"
  "United States"
  "Uruguay"
)

echo "Inserting teams..."
for TEAM_NAME in "${TEAMS[@]}"
do
  # Check if the team already exists to avoid duplicate inserts
  TEAM_EXISTS=$($PSQL "SELECT name FROM teams WHERE name='$TEAM_NAME'")

  if [[ -z $TEAM_EXISTS ]]
  then
    INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM_NAME')")
    echo "Inserted $TEAM_NAME"
  else
    echo "$TEAM_NAME already exists in the database"
  fi
done

echo "Inserting games..."

# Skip the header line, then read each row of games.csv into named variables
cat games.csv | sed 1d | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Look up the correct team IDs dynamically — never hardcoded
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  echo "Inserted game: $WINNER vs $OPPONENT ($YEAR, $ROUND)"
done