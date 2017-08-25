// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:pana/src/version.dart';

import 'shared.dart';

final data = new E2EData('pub_server', '0.1.1+3', _data, {
  'rollup': 'everywhere',
  'pubspec': 'undefined',
  'package:pub_server/repository.dart': 'everywhere',
  'package:pub_server/shelf_pubserver.dart': 'everywhere'
});

final _data = {
  "panaVersion": panaPkgVersion.toString(),
  "sdkVersion": startsWith("Dart VM version"),
  "packageName": "pub_server",
  "packageVersion": "0.1.1+3",
  "pubSummary": {
    "packages": isMap,
    "availablePackages": isMap,
    "pubspecContent": {
      "author": "Dart Team <misc@dartlang.org>",
      "dependencies": {
        "logging": ">=0.9.3 <1.0.0",
        "mime": ">=0.9.3 <0.10.0",
        "pub_semver": ">=1.1.0 <1.4.0",
        "shelf": ">=0.5.6 <0.7.0",
        "yaml": ">=2.1.2 <3.0.0"
      },
      "description":
          "A Dart package containing re-usable components for making a pub package server.",
      "dev_dependencies": {
        "archive": ">=1.0.0 <2.0.0",
        "args": ">=0.12.2 <0.14.0",
        "http": ">0.11.0 <0.12.0",
        "test": ">=0.12.0 <0.13.0"
      },
      "environment": {"sdk": ">=1.5.0 <2.0.0"},
      "homepage": "https://github.com/dart-lang/pub_server",
      "name": "pub_server",
      "version": "0.1.1+3"
    }
  },
  "dartFiles": {
    "example/server.dart": {
      "uri": "asset:pub_server/example/server.dart",
      "size": 2209,
      "isFormatted": true,
      "analyzerItems": [],
    },
    "example/src/examples/cow_repository.dart": {
      "uri": "asset:pub_server/example/src/examples/cow_repository.dart",
      "size": 5001,
      "isFormatted": false,
      "analyzerItems": [
        {
          "type":
              "ERROR|COMPILE_TIME_ERROR|STRONG_MODE_INVALID_METHOD_OVERRIDE",
          "file": "example/src/examples/cow_repository.dart",
          "line": 89,
          "col": 3,
          "error":
              "Invalid override. The type of 'CopyAndWriteRepository.upload' ('(Stream<List<int>>) → Future<dynamic>') isn't a subtype of 'PackageRepository.upload' ('(Stream<List<int>>) → Future<PackageVersion>')."
        }
      ]
    },
    "example/src/examples/file_repository.dart": {
      "uri": "asset:pub_server/example/src/examples/file_repository.dart",
      "size": 4145,
      "isFormatted": true,
      "analyzerItems": [
        {
          "type":
              "ERROR|COMPILE_TIME_ERROR|STRONG_MODE_INVALID_CAST_FUNCTION_EXPR",
          "file": "example/src/examples/file_repository.dart",
          "line": 31,
          "col": 16,
          "error":
              "The function expression type '(Directory) → PackageVersion' isn't of type '(FileSystemEntity) → PackageVersion'. This means its parameter or return type does not match what is expected. Consider changing parameter type(s) or the returned type(s)."
        },
        {
          "type":
              "ERROR|COMPILE_TIME_ERROR|STRONG_MODE_INVALID_METHOD_OVERRIDE",
          "file": "example/src/examples/file_repository.dart",
          "line": 59,
          "col": 3,
          "error":
              "Invalid override. The type of 'FileRepository.upload' ('(Stream<List<int>>) → Future<dynamic>') isn't a subtype of 'PackageRepository.upload' ('(Stream<List<int>>) → Future<PackageVersion>')."
        }
      ]
    },
    "example/src/examples/http_proxy_repository.dart": {
      "uri": "asset:pub_server/example/src/examples/http_proxy_repository.dart",
      "size": 2956,
      "isFormatted": false,
      "analyzerItems": []
    },
    "lib/repository.dart": {
      "uri": "package:pub_server/repository.dart",
      "size": 5129,
      "isFormatted": true,
      "analyzerItems": [],
      "directLibs": ["dart:async", "package:pub_semver/pub_semver.dart"],
      "transitiveLibs": [
        "dart:async",
        "dart:collection",
        "dart:math",
        "package:collection/collection.dart",
        "package:collection/src/algorithms.dart",
        "package:collection/src/canonicalized_map.dart",
        "package:collection/src/combined_wrappers/combined_iterable.dart",
        "package:collection/src/combined_wrappers/combined_list.dart",
        "package:collection/src/combined_wrappers/combined_map.dart",
        "package:collection/src/comparators.dart",
        "package:collection/src/empty_unmodifiable_set.dart",
        "package:collection/src/equality.dart",
        "package:collection/src/equality_map.dart",
        "package:collection/src/equality_set.dart",
        "package:collection/src/functions.dart",
        "package:collection/src/iterable_zip.dart",
        "package:collection/src/priority_queue.dart",
        "package:collection/src/queue_list.dart",
        "package:collection/src/typed_wrappers.dart",
        "package:collection/src/union_set.dart",
        "package:collection/src/union_set_controller.dart",
        "package:collection/src/unmodifiable_wrappers.dart",
        "package:collection/src/utils.dart",
        "package:collection/src/wrappers.dart",
        "package:pub_semver/pub_semver.dart",
        "package:pub_semver/src/patterns.dart",
        "package:pub_semver/src/utils.dart",
        "package:pub_semver/src/version.dart",
        "package:pub_semver/src/version_constraint.dart",
        "package:pub_semver/src/version_range.dart",
        "package:pub_semver/src/version_union.dart"
      ],
      "platform": {
        "uses": ['dart:async', 'dart:collection', 'dart:math']
      }
    },
    "lib/shelf_pubserver.dart": {
      "uri": "package:pub_server/shelf_pubserver.dart",
      "size": 17852,
      "isFormatted": false,
      "analyzerItems": [],
      "directLibs": [
        "dart:async",
        "dart:convert",
        "package:logging/logging.dart",
        "package:mime/mime.dart",
        "package:pub_semver/pub_semver.dart",
        "package:pub_server/repository.dart",
        "package:shelf/shelf.dart",
        "package:yaml/yaml.dart"
      ],
      "transitiveLibs": [
        "dart:async",
        "dart:collection",
        "dart:convert",
        "dart:isolate",
        "dart:math",
        "dart:typed_data",
        "package:async/async.dart",
        "package:async/src/async_cache.dart",
        "package:async/src/async_memoizer.dart",
        "package:async/src/byte_collector.dart",
        "package:async/src/cancelable_operation.dart",
        "package:async/src/delegate/event_sink.dart",
        "package:async/src/delegate/future.dart",
        "package:async/src/delegate/sink.dart",
        "package:async/src/delegate/stream.dart",
        "package:async/src/delegate/stream_consumer.dart",
        "package:async/src/delegate/stream_sink.dart",
        "package:async/src/delegate/stream_subscription.dart",
        "package:async/src/future_group.dart",
        "package:async/src/lazy_stream.dart",
        "package:async/src/null_stream_sink.dart",
        "package:async/src/restartable_timer.dart",
        "package:async/src/result.dart",
        "package:async/src/result/capture_sink.dart",
        "package:async/src/result/capture_transformer.dart",
        "package:async/src/result/error.dart",
        "package:async/src/result/future.dart",
        "package:async/src/result/release_sink.dart",
        "package:async/src/result/release_transformer.dart",
        "package:async/src/result/value.dart",
        "package:async/src/single_subscription_transformer.dart",
        "package:async/src/stream_completer.dart",
        "package:async/src/stream_group.dart",
        "package:async/src/stream_queue.dart",
        "package:async/src/stream_sink_completer.dart",
        "package:async/src/stream_sink_transformer.dart",
        "package:async/src/stream_sink_transformer/handler_transformer.dart",
        "package:async/src/stream_sink_transformer/stream_transformer_wrapper.dart",
        "package:async/src/stream_sink_transformer/typed.dart",
        "package:async/src/stream_splitter.dart",
        "package:async/src/stream_subscription_transformer.dart",
        "package:async/src/stream_zip.dart",
        "package:async/src/subscription_stream.dart",
        "package:async/src/typed/future.dart",
        "package:async/src/typed/stream.dart",
        "package:async/src/typed/stream_subscription.dart",
        "package:async/src/typed_stream_transformer.dart",
        "package:async/src/utils.dart",
        "package:charcode/ascii.dart",
        "package:charcode/charcode.dart",
        "package:charcode/html_entity.dart",
        "package:collection/collection.dart",
        "package:collection/src/algorithms.dart",
        "package:collection/src/canonicalized_map.dart",
        "package:collection/src/combined_wrappers/combined_iterable.dart",
        "package:collection/src/combined_wrappers/combined_list.dart",
        "package:collection/src/combined_wrappers/combined_map.dart",
        "package:collection/src/comparators.dart",
        "package:collection/src/empty_unmodifiable_set.dart",
        "package:collection/src/equality.dart",
        "package:collection/src/equality_map.dart",
        "package:collection/src/equality_set.dart",
        "package:collection/src/functions.dart",
        "package:collection/src/iterable_zip.dart",
        "package:collection/src/priority_queue.dart",
        "package:collection/src/queue_list.dart",
        "package:collection/src/typed_wrappers.dart",
        "package:collection/src/union_set.dart",
        "package:collection/src/union_set_controller.dart",
        "package:collection/src/unmodifiable_wrappers.dart",
        "package:collection/src/utils.dart",
        "package:collection/src/wrappers.dart",
        "package:http_parser/http_parser.dart",
        "package:http_parser/src/authentication_challenge.dart",
        "package:http_parser/src/case_insensitive_map.dart",
        "package:http_parser/src/chunked_coding.dart",
        "package:http_parser/src/chunked_coding/decoder.dart",
        "package:http_parser/src/chunked_coding/encoder.dart",
        "package:http_parser/src/http_date.dart",
        "package:http_parser/src/media_type.dart",
        "package:http_parser/src/scan.dart",
        "package:http_parser/src/utils.dart",
        "package:logging/logging.dart",
        "package:mime/mime.dart",
        "package:mime/src/bound_multipart_stream.dart",
        "package:mime/src/char_code.dart",
        "package:mime/src/default_extension_map.dart",
        "package:mime/src/magic_number.dart",
        "package:mime/src/mime_multipart_transformer.dart",
        "package:mime/src/mime_shared.dart",
        "package:mime/src/mime_type.dart",
        "package:path/path.dart",
        "package:path/src/characters.dart",
        "package:path/src/context.dart",
        "package:path/src/internal_style.dart",
        "package:path/src/parsed_path.dart",
        "package:path/src/path_exception.dart",
        "package:path/src/style.dart",
        "package:path/src/style/posix.dart",
        "package:path/src/style/url.dart",
        "package:path/src/style/windows.dart",
        "package:path/src/utils.dart",
        "package:pub_semver/pub_semver.dart",
        "package:pub_semver/src/patterns.dart",
        "package:pub_semver/src/utils.dart",
        "package:pub_semver/src/version.dart",
        "package:pub_semver/src/version_constraint.dart",
        "package:pub_semver/src/version_range.dart",
        "package:pub_semver/src/version_union.dart",
        "package:pub_server/repository.dart",
        "package:shelf/shelf.dart",
        "package:shelf/src/body.dart",
        "package:shelf/src/cascade.dart",
        "package:shelf/src/handler.dart",
        "package:shelf/src/hijack_exception.dart",
        "package:shelf/src/message.dart",
        "package:shelf/src/middleware.dart",
        "package:shelf/src/middleware/add_chunked_encoding.dart",
        "package:shelf/src/middleware/logger.dart",
        "package:shelf/src/pipeline.dart",
        "package:shelf/src/request.dart",
        "package:shelf/src/response.dart",
        "package:shelf/src/server.dart",
        "package:shelf/src/server_handler.dart",
        "package:shelf/src/shelf_unmodifiable_map.dart",
        "package:shelf/src/util.dart",
        "package:source_span/source_span.dart",
        "package:source_span/src/colors.dart",
        "package:source_span/src/file.dart",
        "package:source_span/src/location.dart",
        "package:source_span/src/location_mixin.dart",
        "package:source_span/src/span.dart",
        "package:source_span/src/span_exception.dart",
        "package:source_span/src/span_mixin.dart",
        "package:source_span/src/span_with_context.dart",
        "package:source_span/src/utils.dart",
        "package:stack_trace/src/chain.dart",
        "package:stack_trace/src/frame.dart",
        "package:stack_trace/src/lazy_chain.dart",
        "package:stack_trace/src/lazy_trace.dart",
        "package:stack_trace/src/stack_zone_specification.dart",
        "package:stack_trace/src/trace.dart",
        "package:stack_trace/src/unparsed_frame.dart",
        "package:stack_trace/src/utils.dart",
        "package:stack_trace/src/vm_trace.dart",
        "package:stack_trace/stack_trace.dart",
        "package:stream_channel/src/close_guarantee_channel.dart",
        "package:stream_channel/src/delegating_stream_channel.dart",
        "package:stream_channel/src/disconnector.dart",
        "package:stream_channel/src/guarantee_channel.dart",
        "package:stream_channel/src/isolate_channel.dart",
        "package:stream_channel/src/json_document_transformer.dart",
        "package:stream_channel/src/multi_channel.dart",
        "package:stream_channel/src/stream_channel_completer.dart",
        "package:stream_channel/src/stream_channel_controller.dart",
        "package:stream_channel/src/stream_channel_transformer.dart",
        "package:stream_channel/src/transformer/typed.dart",
        "package:stream_channel/stream_channel.dart",
        "package:string_scanner/src/eager_span_scanner.dart",
        "package:string_scanner/src/exception.dart",
        "package:string_scanner/src/line_scanner.dart",
        "package:string_scanner/src/relative_span_scanner.dart",
        "package:string_scanner/src/span_scanner.dart",
        "package:string_scanner/src/string_scanner.dart",
        "package:string_scanner/src/utils.dart",
        "package:string_scanner/string_scanner.dart",
        "package:typed_data/typed_buffers.dart",
        "package:typed_data/typed_data.dart",
        "package:yaml/src/equality.dart",
        "package:yaml/src/event.dart",
        "package:yaml/src/loader.dart",
        "package:yaml/src/null_span.dart",
        "package:yaml/src/parser.dart",
        "package:yaml/src/scanner.dart",
        "package:yaml/src/style.dart",
        "package:yaml/src/token.dart",
        "package:yaml/src/utils.dart",
        "package:yaml/src/yaml_document.dart",
        "package:yaml/src/yaml_exception.dart",
        "package:yaml/src/yaml_node.dart",
        "package:yaml/src/yaml_node_wrapper.dart",
        "package:yaml/yaml.dart"
      ],
      "platform": {
        "uses": [
          'dart:async',
          'dart:collection',
          'dart:convert',
          'dart:isolate',
          'dart:math',
          'dart:typed_data'
        ]
      }
    },
    "test/shelf_pubserver_test.dart": {
      "uri": "asset:pub_server/test/shelf_pubserver_test.dart",
      "size": 22061,
      "isFormatted": false,
      "analyzerItems": [
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 215,
          "col": 54,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        },
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 236,
          "col": 54,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        },
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 239,
          "col": 21,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        },
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 362,
          "col": 32,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        },
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 415,
          "col": 32,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        },
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 506,
          "col": 31,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        },
        {
          "type": "INFO|HINT|DEPRECATED_MEMBER_USE",
          "file": "test/shelf_pubserver_test.dart",
          "line": 559,
          "col": 34,
          "error": "'expectAsync' is deprecated and shouldn't be used."
        }
      ]
    },
  },
  "license": {"name": "BSD"}
};
