.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field private static final bottomi:Ljava/lang/Integer;

.field private static final centeri:Ljava/lang/Integer;

.field private static final lefti:Ljava/lang/Integer;

.field private static final onef:Ljava/lang/Float;

.field private static final onei:Ljava/lang/Integer;

.field private static final righti:Ljava/lang/Integer;

.field private static final topi:Ljava/lang/Integer;

.field private static final zerof:Ljava/lang/Float;

.field private static final zeroi:Ljava/lang/Integer;


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field actorHeight:F

.field actorWidth:F

.field actorX:F

.field actorY:F

.field align:Ljava/lang/Integer;

.field cellAboveIndex:I

.field colspan:Ljava/lang/Integer;

.field column:I

.field computedPadBottom:F

.field computedPadLeft:F

.field computedPadRight:F

.field computedPadTop:F

.field endRow:Z

.field expandX:Ljava/lang/Integer;

.field expandY:Ljava/lang/Integer;

.field fillX:Ljava/lang/Float;

.field fillY:Ljava/lang/Float;

.field maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field row:I

.field spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field uniformX:Ljava/lang/Boolean;

.field uniformY:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    .line 14
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    .line 15
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    .line 40
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 498
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 528
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 531
    :goto_0
    return-object p0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 504
    return-object p0
.end method

.method clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 864
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 865
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 866
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 867
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 868
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 869
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 870
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 871
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 872
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 873
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 874
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 875
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 876
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 877
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 878
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 879
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 880
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 881
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 882
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 883
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 884
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 885
    return-void
.end method

.method public clearActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 59
    return-object p0
.end method

.method public colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "colspan"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 577
    return-object p0
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 546
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 547
    return-object p0
.end method

.method public expand(II)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 564
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 565
    return-object p0
.end method

.method public expand(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 571
    if-eqz p2, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 572
    return-object p0

    .line 570
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    goto :goto_0

    .line 571
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 553
    return-object p0
.end method

.method public expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 559
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 458
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 459
    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 476
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 477
    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "fill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 490
    if-eqz p1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 491
    return-object p0

    .line 489
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    goto :goto_0

    .line 490
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    goto :goto_1
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 483
    if-eqz p2, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 484
    return-object p0

    .line 482
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    goto :goto_0

    .line 483
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    goto :goto_1
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 465
    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 471
    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getActorHeight()F
    .locals 1

    .prologue
    .line 637
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    return v0
.end method

.method public getActorWidth()F
    .locals 1

    .prologue
    .line 629
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    return v0
.end method

.method public getActorX()F
    .locals 1

    .prologue
    .line 613
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    return v0
.end method

.method public getActorY()F
    .locals 1

    .prologue
    .line 621
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    return v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 800
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColspan()I
    .locals 1

    .prologue
    .line 815
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 645
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    return v0
.end method

.method public getComputedPadBottom()F
    .locals 1

    .prologue
    .line 845
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    return v0
.end method

.method public getComputedPadLeft()F
    .locals 1

    .prologue
    .line 840
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    return v0
.end method

.method public getComputedPadRight()F
    .locals 1

    .prologue
    .line 850
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    return v0
.end method

.method public getComputedPadTop()F
    .locals 1

    .prologue
    .line 835
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    return v0
.end method

.method public getExpandX()I
    .locals 1

    .prologue
    .line 805
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpandY()I
    .locals 1

    .prologue
    .line 810
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillX()F
    .locals 1

    .prologue
    .line 790
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFillY()F
    .locals 1

    .prologue
    .line 795
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 703
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 699
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 694
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 690
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    .prologue
    .line 667
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    .prologue
    .line 658
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 654
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadBottom()F
    .locals 2

    .prologue
    .line 766
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 762
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 2

    .prologue
    .line 757
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 753
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 2

    .prologue
    .line 775
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 771
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 2

    .prologue
    .line 748
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 744
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 3

    .prologue
    .line 780
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 3

    .prologue
    .line 785
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 685
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 681
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 676
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 649
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    return v0
.end method

.method public getSpaceBottom()F
    .locals 2

    .prologue
    .line 730
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 726
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceLeft()F
    .locals 2

    .prologue
    .line 721
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceRight()F
    .locals 2

    .prologue
    .line 739
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 735
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceTop()F
    .locals 2

    .prologue
    .line 712
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 708
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 858
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getUniformX()Z
    .locals 1

    .prologue
    .line 820
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUniformY()Z
    .locals 1

    .prologue
    .line 825
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasActor()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 136
    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 128
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 129
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 130
    return-object p0
.end method

.method public isEndRow()Z
    .locals 1

    .prologue
    .line 830
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    return v0
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 522
    :goto_0
    return-object p0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "maxHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 289
    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "maxHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 267
    return-object p0
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 273
    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 279
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 245
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 246
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 254
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 255
    return-object p0
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "maxWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 284
    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "maxWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 261
    return-object p0
.end method

.method merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .prologue
    .line 945
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 947
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 948
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 949
    :cond_4
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 950
    :cond_5
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 951
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 952
    :cond_7
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 953
    :cond_8
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 954
    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 955
    :cond_a
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 956
    :cond_b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 957
    :cond_c
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 958
    :cond_d
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 959
    :cond_e
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 960
    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 961
    :cond_10
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 962
    :cond_11
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 963
    :cond_12
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 964
    :cond_13
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 965
    :cond_14
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 966
    :cond_15
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 967
    :cond_16
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "minHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 187
    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "minHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 165
    return-object p0
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 171
    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 177
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 143
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 144
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 152
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 153
    return-object p0
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "minWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 182
    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "minWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 159
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "pad"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 427
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 432
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "pad"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 382
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 383
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 384
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 385
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 394
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 395
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 396
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 397
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 447
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 415
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padLeft"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 442
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 409
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padRight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 452
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 421
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padTop"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 437
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 403
    return-object p0
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "prefHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 238
    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "prefHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 216
    return-object p0
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 228
    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 222
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 194
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 195
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 203
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 204
    return-object p0
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "prefWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 233
    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "prefWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 210
    return-object p0
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v1, 0x0

    .line 889
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 890
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 892
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 894
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 895
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 896
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 897
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 898
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 899
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 900
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 901
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 902
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 903
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 904
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 905
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 906
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 907
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 908
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 909
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 910
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 911
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 912
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 913
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 914
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 915
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 916
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 537
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 540
    :goto_0
    return-object p0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public row()V
    .locals 1

    .prologue
    .line 854
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 855
    return-void
.end method

.method set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1
    .param p1, "defaults"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .prologue
    .line 919
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 920
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 921
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 922
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 923
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 924
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 925
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 926
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 927
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 928
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 929
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 930
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 931
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 932
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 933
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 934
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 935
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 936
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 937
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 938
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 939
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 940
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 941
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TA;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    .local p1, "newActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 51
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 53
    :cond_1
    return-object p0
.end method

.method public setActorBounds(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 606
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 607
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 608
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 609
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 610
    return-void
.end method

.method public setActorHeight(F)V
    .locals 0
    .param p1, "actorHeight"    # F

    .prologue
    .line 641
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 642
    return-void
.end method

.method public setActorWidth(F)V
    .locals 0
    .param p1, "actorWidth"    # F

    .prologue
    .line 633
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 634
    return-void
.end method

.method public setActorX(F)V
    .locals 0
    .param p1, "actorX"    # F

    .prologue
    .line 617
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 618
    return-void
.end method

.method public setActorY(F)V
    .locals 0
    .param p1, "actorY"    # F

    .prologue
    .line 625
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 626
    return-void
.end method

.method public setLayout(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 0
    .param p1, "table"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .prologue
    .line 43
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 44
    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 100
    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 106
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 76
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 77
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 78
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 81
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 89
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 90
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 91
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 92
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 93
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 94
    return-object p0
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "space"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "space cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 342
    return-object p0
.end method

.method public space(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v1, 0x0

    .line 346
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    cmpg-float v0, p3, v1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    cmpg-float v0, p4, v1

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_3
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 351
    return-object p0
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "space"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "space cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 296
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 297
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 298
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 299
    return-object p0
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 308
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 309
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 310
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 311
    return-object p0
.end method

.method public spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceBottom cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 369
    return-object p0
.end method

.method public spaceBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 329
    return-object p0
.end method

.method public spaceLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceLeft"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceLeft cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 363
    return-object p0
.end method

.method public spaceLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 323
    return-object p0
.end method

.method public spaceRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceRight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceRight cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 375
    return-object p0
.end method

.method public spaceRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 335
    return-object p0
.end method

.method public spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceTop"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceTop cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 357
    return-object p0
.end method

.method public spaceTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 317
    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 510
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 513
    :goto_0
    return-object p0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 583
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 584
    return-object p0
.end method

.method public uniform(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 601
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 602
    return-object p0
.end method

.method public uniformX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 590
    return-object p0
.end method

.method public uniformY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 596
    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 121
    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 113
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 114
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 115
    return-object p0
.end method
