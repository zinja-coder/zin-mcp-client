.class Lde/fgerbig/spacepeng/utils/LRUCache$1;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/utils/LRUCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/utils/LRUCache;

.field final synthetic val$maxEntries:I


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/utils/LRUCache;IFZI)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 40
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache$1;, "Lde/fgerbig/spacepeng/utils/LRUCache.1;"
    iput-object p1, p0, Lde/fgerbig/spacepeng/utils/LRUCache$1;->this$0:Lde/fgerbig/spacepeng/utils/LRUCache;

    iput p5, p0, Lde/fgerbig/spacepeng/utils/LRUCache$1;->val$maxEntries:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache$1;, "Lde/fgerbig/spacepeng/utils/LRUCache.1;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/utils/LRUCache$1;->size()I

    move-result v0

    iget v1, p0, Lde/fgerbig/spacepeng/utils/LRUCache$1;->val$maxEntries:I

    if-le v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache$1;->this$0:Lde/fgerbig/spacepeng/utils/LRUCache;

    invoke-static {v0}, Lde/fgerbig/spacepeng/utils/LRUCache;->access$000(Lde/fgerbig/spacepeng/utils/LRUCache;)Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache$1;->this$0:Lde/fgerbig/spacepeng/utils/LRUCache;

    invoke-static {v0}, Lde/fgerbig/spacepeng/utils/LRUCache;->access$000(Lde/fgerbig/spacepeng/utils/LRUCache;)Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;->notifyEntryRemoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
