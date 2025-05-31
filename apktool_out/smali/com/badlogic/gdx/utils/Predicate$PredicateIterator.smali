.class public Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredicateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public end:Z

.field public iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field public next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public peeked:Z

.field public predicate:Lcom/badlogic/gdx/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Predicate",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;-><init>(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    .line 34
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    if-eqz v3, :cond_0

    .line 69
    :goto_0
    return v1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 60
    :cond_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    .line 61
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "n":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->predicate:Lcom/badlogic/gdx/utils/Predicate;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/utils/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    move v1, v2

    .line 65
    goto :goto_0

    .line 68
    .end local v0    # "n":Ljava/lang/Object;, "TT;"
    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    const/4 v1, 0x0

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 76
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 83
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot remove between a call to hasNext() and next()."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    return-void
.end method

.method public set(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 47
    return-void
.end method

.method public set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    .line 51
    iput-object p2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->predicate:Lcom/badlogic/gdx/utils/Predicate;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 54
    return-void
.end method
