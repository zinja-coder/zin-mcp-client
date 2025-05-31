.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
.super Ljava/lang/Object;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buttons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field private checkedButtons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field private lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private maxCheckCount:I

.field private minCheckCount:I

.field private uncheckLast:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    .line 29
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 30
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 34
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 35
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "buttons":[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "[TT;"
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    .line 29
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 30
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 40
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    const/4 v1, 0x0

    .line 44
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "button cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 46
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    if-ge v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 47
    .local v0, "shouldCheck":Z
    :goto_0
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 48
    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 51
    return-void

    .end local v0    # "shouldCheck":Z
    :cond_2
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "buttons":[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "[TT;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "buttons cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 56
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method protected canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z
    .locals 5
    .param p2, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    iget-boolean v3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v3, p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 97
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    if-le v3, v4, :cond_0

    .line 98
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :goto_1
    move v1, v2

    .line 114
    goto :goto_0

    .line 101
    :cond_2
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    if-lt v3, v4, :cond_3

    .line 102
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    if-eqz v3, :cond_0

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 104
    .local v0, "old":I
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 105
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 106
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 110
    .end local v0    # "old":I
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 75
    return-void
.end method

.method public getAllChecked()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getButtons()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getChecked()Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedIndex()I
    .locals 3

    .prologue
    .line 136
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    const/4 v1, 0x1

    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "button cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 64
    return-void
.end method

.method public varargs remove([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "buttons":[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "[TT;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "buttons cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 69
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public setChecked(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 79
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "text cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 82
    .local v0, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 87
    .end local v0    # "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    :cond_1
    return-void

    .line 80
    .restart local v0    # "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setMaxCheckCount(I)V
    .locals 0
    .param p1, "maxCheckCount"    # I

    .prologue
    .line 155
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 156
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 157
    return-void
.end method

.method public setMinCheckCount(I)V
    .locals 0
    .param p1, "minCheckCount"    # I

    .prologue
    .line 150
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 151
    return-void
.end method

.method public setUncheckLast(Z)V
    .locals 0
    .param p1, "uncheckLast"    # Z

    .prologue
    .line 163
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 164
    return-void
.end method

.method public uncheckAll()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    const/4 v5, 0x0

    .line 119
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 120
    .local v3, "old":I
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 122
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 123
    .local v0, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 126
    return-void
.end method
