package gary.web.petstore.persistence;

import gary.web.petstore.domain.Sequence;

public interface SequenceDao {
    Sequence getSequence(Sequence sequence);
    void updateSequence(Sequence sequence);
}
