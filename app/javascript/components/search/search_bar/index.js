import React, { Fragment, useState } from 'react';
import { Form } from 'react-bulma-components';

const SearchBar = (props) => {
    const [query, setQuery] = useState("");
    const Search = (e) => {
        if (e.key === 'Enter') {
            props.featchSearch(query);
            setQuery("")
        }
    }

    return (
        <Fragment>
            <Form.Field onKeyDown={Search}>
                <Form.Control iconRight>
                    <Form.Input
                       placeholder="Álbuns, artistas ou músicas"
                       value={query}
                       onChange={ e => setQuery(e.target.value)}
                    />
                </Form.Control>
            </Form.Field>
        </Fragment>
    );
}
export default SearchBar;