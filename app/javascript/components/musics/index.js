import React, { Fragment } from 'react';
import styled from 'styled-components';
import Music from './music';
import { Button, Columns } from 'react-bulma-components';


const PlaySequenceButton = styled(Button)`
  margin-bottom: 30px;
  `
const Musics = (props) => {
    return (
        <Fragment>
            <Columns className='is-mobile is-centered'>
                <Columns.Column desktop={{ size: 6 }} mobile={{ size: 12 }} className='has-text-centered '>
                    <PlaySequenceButton
                        className='is-medium'
                        color='primary'
                        outlined>
                        Tocar aleatoriamente
                    </PlaySequenceButton>
                </Columns.Column>
            </Columns>
            {/* Musics :) */}
            <Music />
            <Music />
            <Music />
        </Fragment>

    );
}
export default Musics;