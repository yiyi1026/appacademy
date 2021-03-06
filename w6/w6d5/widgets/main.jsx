import React from 'react';
import Tabs from './tabs';
import Clock from './clock';

const tab0 = { title: "Tab 0", content: "Stuff 0" };
const tab1 = { title: "Tab 1", content: "Stuff 1" };
const tab2 = { title: "Tab 2", content: "Stuff 2" };

class Main extends React.Component {
  constructor() {
    super();
    this.state = {
      tabs: [tab0, tab1, tab2],
      clock: [clock0]
    };
  }

  render() {
    return (
      <div>
        < Tabs tabs={this.state.tabs}/>
        < Clock clock={this.state.clock}/>
      </div>
    );
  }
}

export default Main;
