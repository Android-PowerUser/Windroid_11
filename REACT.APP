.window {
  width: 800px;
  height: 600px;
  background-color: #ffffff;
  border: 1px solid #d3d3d3;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  overflow: hidden;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.window-header {
  background-color: #f3f3f3;
  padding: 10px;
  border-bottom: 1px solid #d3d3d3;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.window-title {
  font-weight: bold;
}

.window-controls {
  display: flex;
}

.window-button {
  border: none;
  background: none;
  padding: 5px;
  margin-left: 5px;
  cursor: pointer;
}

.window-button:hover {
  background-color: #e0e0e0;
}

.window-content {
  padding: 20px;
}
