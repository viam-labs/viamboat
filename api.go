package viamboat

type CANMessage struct {
	Timestamp   string
	Priority    int `json:"prio"`
	Src         int `json:"src"`
	Dst         int `json:"dst"`
	Pgn         int `json:"pgn"`
	Description string
	Fields      map[string]interface{}
}
