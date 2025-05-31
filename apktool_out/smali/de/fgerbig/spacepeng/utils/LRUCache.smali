.class public Lde/fgerbig/spacepeng/utils/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private entryRemovedListener:Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "maxEntries"    # I

    .prologue
    .line 39
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache;, "Lde/fgerbig/spacepeng/utils/LRUCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lde/fgerbig/spacepeng/utils/LRUCache$1;

    add-int/lit8 v2, p1, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lde/fgerbig/spacepeng/utils/LRUCache$1;-><init>(Lde/fgerbig/spacepeng/utils/LRUCache;IFZI)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache;->cache:Ljava/util/Map;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lde/fgerbig/spacepeng/utils/LRUCache;)Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/utils/LRUCache;

    .prologue
    .line 31
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache;->entryRemovedListener:Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache;, "Lde/fgerbig/spacepeng/utils/LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache;, "Lde/fgerbig/spacepeng/utils/LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public retrieveAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache;, "Lde/fgerbig/spacepeng/utils/LRUCache<TK;TV;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/LRUCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public setEntryRemovedListener(Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lde/fgerbig/spacepeng/utils/LRUCache;, "Lde/fgerbig/spacepeng/utils/LRUCache<TK;TV;>;"
    .local p1, "entryRemovedListener":Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;, "Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener<TK;TV;>;"
    iput-object p1, p0, Lde/fgerbig/spacepeng/utils/LRUCache;->entryRemovedListener:Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;

    .line 72
    return-void
.end method
