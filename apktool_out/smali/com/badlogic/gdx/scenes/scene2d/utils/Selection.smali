.class public Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field isDisabled:Z

.field lastSelected:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field multiple:Z

.field private final old:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet",
            "<TT;>;"
        }
    .end annotation
.end field

.field private programmaticChangeEvents:Z

.field required:Z

.field final selected:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet",
            "<TT;>;"
        }
    .end annotation
.end field

.field private toggle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    .line 18
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "items":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    .line 135
    .local v0, "added":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 137
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 146
    return-void

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_1
.end method

.method public choose(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 34
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "item cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    if-eqz v2, :cond_1

    .line 56
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 38
    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-eq v2, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 39
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v1, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    goto :goto_0

    .line 40
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    goto :goto_0

    .line 43
    :cond_6
    const/4 v0, 0x0

    .line 44
    .local v0, "modified":Z
    :try_start_2
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    if-nez v2, :cond_9

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-nez v2, :cond_9

    .line 45
    :cond_7
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ne v2, v1, :cond_8

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    .line 54
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    goto :goto_0

    .line 46
    :cond_8
    :try_start_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v2, :cond_a

    move v0, v1

    .line 47
    :goto_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 49
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    .line 54
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    goto :goto_0

    .line 46
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 50
    :cond_b
    :try_start_4
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 54
    .end local v0    # "modified":Z
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    throw v1
.end method

.method cleanup()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 91
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 176
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fireChangeEvent()Z
    .locals 2

    .prologue
    .line 187
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 188
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 190
    .local v0, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 192
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMultiple()Z
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    return v0
.end method

.method public getRequired()Z
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    return v0
.end method

.method public getToggle()Z
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public items()Lcom/badlogic/gdx/utils/OrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "items":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v3, 0x0

    .line 159
    .local v3, "removed":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 161
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    .line 169
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 170
    return-void

    .line 168
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_1
.end method

.method revert()V
    .locals 2

    .prologue
    .line 85
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 87
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 100
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    .line 104
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    goto :goto_0

    .line 103
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_1
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 28
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 29
    return-void
.end method

.method public setAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "items":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "added":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 110
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 112
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 121
    return-void

    .line 119
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_1
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "isDisabled"    # Z

    .prologue
    .line 220
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    .line 221
    return-void
.end method

.method public setMultiple(Z)V
    .locals 0
    .param p1, "multiple"    # Z

    .prologue
    .line 242
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    .line 243
    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0
    .param p1, "programmaticChangeEvents"    # Z

    .prologue
    .line 256
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    .line 257
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 251
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    .line 252
    return-void
.end method

.method public setToggle(Z)V
    .locals 0
    .param p1, "toggle"    # Z

    .prologue
    .line 233
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    .line 234
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    return v0
.end method

.method snapshot()V
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 82
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
