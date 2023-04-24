// SPDX-License-Identifier: BSD-3-Clause-Clear

pragma solidity >=0.8.13 <0.9.0;

import "./Common.sol";
import "./Impl.sol";

library FHEOps {
    function add(euint8 a, euint8 b) internal view returns (euint8) {
        return euint8.wrap(Impl.add(euint8.unwrap(a), euint8.unwrap(b)));
    }

    function sub(euint8 a, euint8 b) internal view returns (euint8) {
        return euint8.wrap(Impl.sub(euint8.unwrap(a), euint8.unwrap(b)));
    }

    function mul(euint8 a, euint8 b) internal view returns (euint8) {
        return euint8.wrap(Impl.mul(euint8.unwrap(a), euint8.unwrap(b)));
    }

    function lte(euint8 a, euint8 b) internal view returns (euint8) {
        return euint8.wrap(Impl.lte(euint8.unwrap(a), euint8.unwrap(b)));
    }

    function lt(euint8 a, euint8 b) internal view returns (euint8) {
        return euint8.wrap(Impl.lt(euint8.unwrap(a), euint8.unwrap(b)));
    }

    function add(euint16 a, euint16 b) internal view returns (euint16) {
        return euint16.wrap(Impl.add(euint16.unwrap(a), euint16.unwrap(b)));
    }

    function sub(euint16 a, euint16 b) internal view returns (euint16) {
        return euint16.wrap(Impl.sub(euint16.unwrap(a), euint16.unwrap(b)));
    }

    function mul(euint16 a, euint16 b) internal view returns (euint16) {
        return euint16.wrap(Impl.mul(euint16.unwrap(a), euint16.unwrap(b)));
    }

    function lte(euint16 a, euint16 b) internal view returns (euint8) {
        return euint8.wrap(Impl.lte(euint16.unwrap(a), euint16.unwrap(b)));
    }

    function lt(euint16 a, euint16 b) internal view returns (euint8) {
        return euint8.wrap(Impl.lt(euint16.unwrap(a), euint16.unwrap(b)));
    }

    function add(euint32 a, euint32 b) internal view returns (euint32) {
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(b)));
    }

    function sub(euint32 a, euint32 b) internal view returns (euint32) {
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(b)));
    }

    function mul(euint32 a, euint32 b) internal view returns (euint32) {
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(b)));
    }

    function lte(euint32 a, euint32 b) internal view returns (euint8) {
        return euint8.wrap(Impl.lte(euint32.unwrap(a), euint32.unwrap(b)));
    }

    function lt(euint32 a, euint32 b) internal view returns (euint8) {
        return euint8.wrap(Impl.lt(euint32.unwrap(a), euint32.unwrap(b)));
    }

    function cmux(
        euint8 control,
        euint8 a,
        euint8 b
    ) internal view returns (euint8) {
        return
            euint8.wrap(
                Impl.cmux(
                    euint8.unwrap(control),
                    euint8.unwrap(a),
                    euint8.unwrap(b)
                )
            );
    }

    function cmux(
        euint8 control,
        euint16 a,
        euint16 b
    ) internal view returns (euint16) {
        return
            euint16.wrap(
                Impl.cmux(
                    euint8.unwrap(control),
                    euint16.unwrap(a),
                    euint16.unwrap(b)
                )
            );
    }

    function cmux(
        euint8 control,
        euint32 a,
        euint32 b
    ) internal view returns (euint32) {
        return
            euint32.wrap(
                Impl.cmux(
                    euint8.unwrap(control),
                    euint32.unwrap(a),
                    euint32.unwrap(b)
                )
            );
    }

    function toEuint8(euint16 v) internal view returns (euint8) {
        return euint8.wrap(Impl.cast(euint16.unwrap(v), Common.euint16_t));
    }

    function toEuint8(euint32 v) internal view returns (euint8) {
        return euint8.wrap(Impl.cast(euint32.unwrap(v), Common.euint32_t));
    }

    function toEuint16(euint8 v) internal view returns (euint16) {
        return euint16.wrap(Impl.cast(euint8.unwrap(v), Common.euint8_t));
    }

    function toEuint16(euint32 v) internal view returns (euint16) {
        return euint16.wrap(Impl.cast(euint32.unwrap(v), Common.euint32_t));
    }

    function toEuint32(euint8 v) internal view returns (euint32) {
        return euint32.wrap(Impl.cast(euint8.unwrap(v), Common.euint8_t));
    }

    function toEuint32(euint16 v) internal view returns (euint32) {
        return euint32.wrap(Impl.cast(euint16.unwrap(v), Common.euint16_t));
    }
}