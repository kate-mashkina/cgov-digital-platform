import React, { useEffect, useRef } from 'react';
import PropTypes from 'prop-types';
import './StickySubmitBlock.scss';
require('intersection-observer');

const StickySubmitBlock = ({ sentinelRef, onSubmit }) => {
  const stickyEl = useRef(null);

  useEffect(() => {
    intObserver.observe(stickyEl.current);
  }, []);

  const options = {
    root: sentinelRef,
    threshold: 1.0,
  };

  const callback = function(entries, observer) {
    entries.forEach(entry => {
      if (entry.isIntersecting && entry.intersectionRatio === 1) {
        entry.target.classList.remove('--sticky');
      } else if (window.scrollY < entry.target.offsetTop) {
        entry.target.classList.add('--sticky');
      }
    });
  };

  const handleClick = e => {
    onSubmit(e);
  };

  const intObserver = new IntersectionObserver(callback, options);
  
  return (
    <div id="stickyAnchor" ref={stickyEl} className="sticky-block__anchor">
      <div className="sticky-block">
        <button
          type="button"
          className="btn-submit faux-btn-submit"
          onClick={handleClick}
        >
          Find Trials
        </button>
        <div className="helper-text">Start your search at any time.</div>
      </div>
    </div>
  );
};

StickySubmitBlock.propTypes = {
  sentinelRef: PropTypes.node,
  onSubmit: PropTypes.func,
};

StickySubmitBlock.defaultProps = {
  onSubmit: () => {},
};

export default StickySubmitBlock;
