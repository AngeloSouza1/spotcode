import React, { Fragment, useState, useEffect } from 'react';
import Music from './music';
import { Button, Columns } from 'react-bulma-components';
import styled from 'styled-components';

const PlaySequenceButton = styled(Button)`
  margin-bottom: 28px;
  `


const Musics = (props) => {
    const [songs, setSongs] = useState([]);
    const [playing, setPlaying] = useState([]);

    useEffect(() => {
        setSongs(props.songs.map((song, key) =>
            <Music
                song={song}
                playing={playing.id == song.id}
                setPlaying={setPlaying}
                key={key}
            />
        ));
    }, [props.songs, playing]);



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
            {songs}
        </Fragment>

    );
}
export default Musics;