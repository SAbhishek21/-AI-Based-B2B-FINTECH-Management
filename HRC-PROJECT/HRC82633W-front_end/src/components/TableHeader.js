import React, { useState } from "react";
import Button from "@mui/material/Button";
import ButtonGroup from "@mui/material/ButtonGroup";
import TextField from "@mui/material/TextField";
import AddInvoice from "./AddInvoice";
import axios from "axios";

function TableHeader(props) {
  const [openAdd, setOpenAdd] = useState(false);
  const [send, setSend] = useState("");

  const handleSend = (data) => {
    setOpenAdd(false);
    axios
      .post("http://localhost:8080/HRC_Backend/AddInvoice", data)
      .then(function (response) {
        console.log(response);
      })
      .catch(function (error) {
        console.log(error);
      });
    setSend("");
  };

  return (
    <div>
      <ButtonGroup
        variant="outlined"
        aria-label="outlined button group"
        style={{ marginLeft: "2%", marginTop: "1.5%" }}
      >
        <Button style={{ color: "white" }} variant="contained">
          PREDICT
        </Button>
        <Button style={{ color: "white" }}>ANALYTICS VIEW</Button>
        <Button style={{ color: "white" }}>ADVANCE SEARCH</Button>
      </ButtonGroup>
      <TextField
        id="filled-search"
        label="Search Customer Id"
        type="search"
        variant="filled"
        style={{
          backgroundColor: "white",
          borderRadius: "10px",
          marginLeft: "10%",
          marginTop: "1%",
          width: "300px",
        }}
        onChange={(e) => props.setSearchQuery(e.target.value)}
      />
      <ButtonGroup
        variant="outlined"
        aria-label="outlined button group"
        style={{ marginLeft: "10%", marginTop: "1%" }}
      >
        <Button
          style={{ color: "white", width: "150px" }}
          variant="contained"
          onClick={() => setOpenAdd(true)}
        >
          ADD
        </Button>
        <Button style={{ color: "white", width: "150px" }}>EDIT</Button>
        <Button style={{ color: "white", width: "150px" }}>DELETE</Button>
      </ButtonGroup>
      <AddInvoice open={openAdd} send={send} parentSendData={handleSend}>
        <Button
          variant="outlined"
          sx={{
            color: "white",
            width: "600px",
            marginTop: "60px",
            marginLeft: "5px",
          }}
          onClick={() => setSend("send")}
        >
          ADD
        </Button>
        &nbsp; &nbsp;
        <Button
          variant="outlined"
          sx={{ color: "white", width: "600px", marginTop: "60px" }}
          onClick={() => {
            setOpenAdd(false);
          }}
        >
          CANCEL
        </Button>
      </AddInvoice>
    </div>
  );
}

export default TableHeader;
