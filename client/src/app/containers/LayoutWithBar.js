import {connect} from 'react-redux';
import LayoutWithBar from '../components/LayoutWithBar';
import * as actionCreators from '../actions/app';

const mapStateToProps = state => {
    return {
    	userInfo: state.app.userInfo
    };
};

const mapDispatchToProps = dispatch => {
    return {
    	getUser() {
    		dispatch(actionCreators.getUser())
    	}
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(LayoutWithBar);
