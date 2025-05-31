.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "ArraySelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field private rangeSelect:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 17
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 18
    return-void
.end method


# virtual methods
.method public choose(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 21
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "item cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled:Z

    if-eqz v3, :cond_1

    .line 41
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v3, :cond_7

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->multiple:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x3b

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x3c

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 25
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->getLastSelected()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    .line 26
    .local v1, "low":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1, v5}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 27
    .local v0, "high":I
    if-le v1, v0, :cond_3

    .line 28
    move v2, v1

    .line 29
    .local v2, "temp":I
    move v1, v0

    .line 30
    move v0, v2

    .line 32
    .end local v2    # "temp":I
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->snapshot()V

    .line 33
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 34
    :cond_4
    :goto_1
    if-gt v1, v0, :cond_5

    .line 35
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->fireChangeEvent()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->revert()V

    .line 37
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->cleanup()V

    goto :goto_0

    .line 40
    .end local v0    # "high":I
    .end local v1    # "low":I
    :cond_7
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getRangeSelect()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return v0
.end method

.method public setRangeSelect(Z)V
    .locals 0
    .param p1, "rangeSelect"    # Z

    .prologue
    .line 48
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 49
    return-void
.end method

.method public validate()V
    .locals 4

    .prologue
    .line 54
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 55
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, "selected":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 63
    .end local v2    # "selected":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->required:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
