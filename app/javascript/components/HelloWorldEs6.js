import React from "react"
import PropTypes from "prop-types"
class HelloWorldEs6 extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloWorldEs6.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorldEs6
