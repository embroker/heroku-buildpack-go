create_signature() {
  echo "$(node --version); $(npm --version)"
}

save_signature() {
  echo "$(create_signature)" > $CACHE_DIR/node/signature
}

load_signature() {
  if test -f $CACHE_DIR/node/signature; then
    cat $CACHE_DIR/node/signature
  else
    echo ""
  fi
}