# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Grafeas
  module V1
    # Spec defined at
    # https://github.com/in-toto/attestation/tree/main/spec#statement The
    # serialized InTotoStatement will be stored as Envelope.payload.
    # Envelope.payloadType is always "application/vnd.in-toto+json".
    # @!attribute [rw] type
    #   @return [::String]
    #     Always `https://in-toto.io/Statement/v0.1`.
    # @!attribute [rw] subject
    #   @return [::Array<::Grafeas::V1::Subject>]
    # @!attribute [rw] predicate_type
    #   @return [::String]
    #     `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
    # @!attribute [rw] provenance
    #   @return [::Grafeas::V1::InTotoProvenance]
    # @!attribute [rw] slsa_provenance
    #   @return [::Grafeas::V1::SlsaProvenance]
    # @!attribute [rw] slsa_provenance_zero_two
    #   @return [::Grafeas::V1::SlsaProvenanceZeroTwo]
    class InTotoStatement
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # @!attribute [rw] name
    #   @return [::String]
    # @!attribute [rw] digest
    #   @return [::Google::Protobuf::Map{::String => ::String}]
    #     `"<ALGORITHM>": "<HEX_VALUE>"`
    #     Algorithms can be e.g. sha256, sha512
    #     See
    #     https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
    class Subject
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # @!attribute [rw] key
      #   @return [::String]
      # @!attribute [rw] value
      #   @return [::String]
      class DigestEntry
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end