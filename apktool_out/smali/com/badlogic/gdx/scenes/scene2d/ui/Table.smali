.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    }
.end annotation


# static fields
.field public static backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field static final cellPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private static columnWeightedWidth:[F

.field public static debugActorColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugCellColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugTableColor:Lcom/badlogic/gdx/graphics/Color;

.field private static rowWeightedHeight:[F


# instance fields
.field align:I

.field background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private final cells:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private clip:Z

.field private final columnDefaults:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private columnMinWidth:[F

.field private columnPrefWidth:[F

.field private columnWidth:[F

.field private columns:I

.field debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private expandHeight:[F

.field private expandWidth:[F

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field round:Z

.field private rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private rowHeight:[F

.field private rowMinHeight:[F

.field private rowPrefHeight:[F

.field private rows:I

.field private sizeInvalid:Z

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private tableMinHeight:F

.field private tableMinWidth:F

.field private tablePrefHeight:F

.field private tablePrefWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    .line 1213
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1222
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1231
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1240
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 3
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    .line 59
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 67
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 68
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 70
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 76
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 86
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 89
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 90
    return-void
.end method

.method private addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 1149
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1150
    .local v0, "rect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    iput-object p5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 1151
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    sub-float/2addr v1, p2

    sub-float/2addr v1, p4

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 1152
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 1153
    return-void
.end method

.method private clearDebugRects()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    .line 1145
    :goto_0
    return-void

    .line 1143
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 1144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_0
.end method

.method private computeSize()V
    .locals 49

    .prologue
    .line 739
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 741
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 742
    .local v7, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v6, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 744
    .local v6, "cellCount":I
    if-lez v6, :cond_0

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    move/from16 v45, v0

    if-nez v45, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 746
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .local v13, "columns":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    move/from16 v34, v0

    .line 747
    .local v34, "rows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    .line 748
    .local v10, "columnMinWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    .line 749
    .local v32, "rowMinHeight":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 750
    .local v11, "columnPrefWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 751
    .local v33, "rowPrefHeight":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .line 752
    .local v12, "columnWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 753
    .local v31, "rowHeight":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .line 754
    .local v15, "expandWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    .line 756
    .local v14, "expandHeight":[F
    const/16 v36, 0x0

    .line 757
    .local v36, "spaceRightLast":F
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v6, :cond_c

    .line 758
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 759
    .local v5, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v9, "column":I
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v30, v0

    .local v30, "row":I
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 760
    .local v8, "colspan":I
    iget-object v3, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 763
    .local v3, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    if-eqz v45, :cond_1

    aget v45, v14, v30

    const/16 v46, 0x0

    cmpl-float v45, v45, v46

    if-nez v45, :cond_1

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    aput v45, v14, v30

    .line 764
    :cond_1
    const/16 v45, 0x1

    move/from16 v0, v45

    if-ne v8, v0, :cond_2

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    if-eqz v45, :cond_2

    aget v45, v15, v9

    const/16 v46, 0x0

    cmpl-float v45, v45, v46

    if-nez v45, :cond_2

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    aput v45, v15, v9

    .line 768
    :cond_2
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v46

    if-nez v9, :cond_9

    const/16 v45, 0x0

    :goto_1
    add-float v45, v45, v46

    move/from16 v0, v45

    iput v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    .line 769
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v45

    move/from16 v0, v45

    iput v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 770
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 771
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 772
    .local v4, "above":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    move/from16 v45, v0

    const/16 v46, 0x0

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v47

    iget-object v0, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v48

    sub-float v47, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(FF)F

    move-result v46

    add-float v45, v45, v46

    move/from16 v0, v45

    iput v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 774
    .end local v4    # "above":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_3
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v35

    .line 775
    .local v35, "spaceRight":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v46

    add-int v45, v9, v8

    move/from16 v0, v45

    if-ne v0, v13, :cond_a

    const/16 v45, 0x0

    :goto_2
    add-float v45, v45, v46

    move/from16 v0, v45

    iput v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    .line 776
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v46

    add-int/lit8 v45, v34, -0x1

    move/from16 v0, v30

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    const/16 v45, 0x0

    :goto_3
    add-float v45, v45, v46

    move/from16 v0, v45

    iput v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    .line 777
    move/from16 v36, v35

    .line 780
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v28

    .line 781
    .local v28, "prefWidth":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v27

    .line 782
    .local v27, "prefHeight":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v25

    .line 783
    .local v25, "minWidth":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v24

    .line 784
    .local v24, "minHeight":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v23

    .line 785
    .local v23, "maxWidth":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v22

    .line 786
    .local v22, "maxHeight":F
    cmpg-float v45, v28, v25

    if-gez v45, :cond_4

    move/from16 v28, v25

    .line 787
    :cond_4
    cmpg-float v45, v27, v24

    if-gez v45, :cond_5

    move/from16 v27, v24

    .line 788
    :cond_5
    const/16 v45, 0x0

    cmpl-float v45, v23, v45

    if-lez v45, :cond_6

    cmpl-float v45, v28, v23

    if-lez v45, :cond_6

    move/from16 v28, v23

    .line 789
    :cond_6
    const/16 v45, 0x0

    cmpl-float v45, v22, v45

    if-lez v45, :cond_7

    cmpl-float v45, v27, v22

    if-lez v45, :cond_7

    move/from16 v27, v22

    .line 791
    :cond_7
    const/16 v45, 0x1

    move/from16 v0, v45

    if-ne v8, v0, :cond_8

    .line 792
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    move/from16 v46, v0

    add-float v19, v45, v46

    .line 793
    .local v19, "hpadding":F
    aget v45, v11, v9

    add-float v46, v28, v19

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    aput v45, v11, v9

    .line 794
    aget v45, v10, v9

    add-float v46, v25, v19

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    aput v45, v10, v9

    .line 796
    .end local v19    # "hpadding":F
    :cond_8
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    move/from16 v46, v0

    add-float v44, v45, v46

    .line 797
    .local v44, "vpadding":F
    aget v45, v33, v30

    add-float v46, v27, v44

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    aput v45, v33, v30

    .line 798
    aget v45, v32, v30

    add-float v46, v24, v44

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    aput v45, v32, v30

    .line 757
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 768
    .end local v22    # "maxHeight":F
    .end local v23    # "maxWidth":F
    .end local v24    # "minHeight":F
    .end local v25    # "minWidth":F
    .end local v27    # "prefHeight":F
    .end local v28    # "prefWidth":F
    .end local v35    # "spaceRight":F
    .end local v44    # "vpadding":F
    :cond_9
    const/16 v45, 0x0

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v47

    sub-float v47, v47, v36

    move/from16 v0, v45

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v45

    goto/16 :goto_1

    .restart local v35    # "spaceRight":F
    :cond_a
    move/from16 v45, v35

    .line 775
    goto/16 :goto_2

    .line 776
    :cond_b
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v45

    goto/16 :goto_3

    .line 803
    .end local v3    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v8    # "colspan":I
    .end local v9    # "column":I
    .end local v30    # "row":I
    .end local v35    # "spaceRight":F
    :cond_c
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v0, v6, :cond_10

    .line 804
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 805
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 806
    .local v16, "expandX":I
    if-nez v16, :cond_e

    .line 803
    :cond_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 807
    :cond_e
    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .restart local v9    # "column":I
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    add-int v26, v9, v45

    .line 808
    .local v26, "nn":I
    move/from16 v21, v9

    .local v21, "ii":I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 809
    aget v45, v15, v21

    const/16 v46, 0x0

    cmpl-float v45, v45, v46

    if-nez v45, :cond_d

    .line 808
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 810
    :cond_f
    move/from16 v21, v9

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 811
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v45, v0

    aput v45, v15, v21

    .line 810
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 815
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v9    # "column":I
    .end local v16    # "expandX":I
    .end local v21    # "ii":I
    .end local v26    # "nn":I
    :cond_10
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v6, :cond_18

    .line 816
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 817
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 818
    .restart local v8    # "colspan":I
    const/16 v45, 0x1

    move/from16 v0, v45

    if-ne v8, v0, :cond_12

    .line 815
    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 819
    :cond_12
    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 821
    .restart local v9    # "column":I
    iget-object v3, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 822
    .restart local v3    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v25

    .line 823
    .restart local v25    # "minWidth":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v28

    .line 824
    .restart local v28    # "prefWidth":F
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v23

    .line 825
    .restart local v23    # "maxWidth":F
    cmpg-float v45, v28, v25

    if-gez v45, :cond_13

    move/from16 v28, v25

    .line 826
    :cond_13
    const/16 v45, 0x0

    cmpl-float v45, v23, v45

    if-lez v45, :cond_14

    cmpl-float v45, v28, v23

    if-lez v45, :cond_14

    move/from16 v28, v23

    .line 828
    :cond_14
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    move/from16 v46, v0

    add-float v45, v45, v46

    move/from16 v0, v45

    neg-float v0, v0

    move/from16 v37, v0

    .local v37, "spannedMinWidth":F
    move/from16 v38, v37

    .line 829
    .local v38, "spannedPrefWidth":F
    move/from16 v21, v9

    .restart local v21    # "ii":I
    add-int v26, v21, v8

    .restart local v26    # "nn":I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    .line 830
    aget v45, v10, v21

    add-float v37, v37, v45

    .line 831
    aget v45, v11, v21

    add-float v38, v38, v45

    .line 829
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 835
    :cond_15
    const/16 v39, 0x0

    .line 836
    .local v39, "totalExpandWidth":F
    move/from16 v21, v9

    add-int v26, v21, v8

    :goto_9
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    .line 837
    aget v45, v15, v21

    add-float v39, v39, v45

    .line 836
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 839
    :cond_16
    const/16 v45, 0x0

    sub-float v46, v25, v37

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 840
    .local v17, "extraMinWidth":F
    const/16 v45, 0x0

    sub-float v46, v28, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 841
    .local v18, "extraPrefWidth":F
    move/from16 v21, v9

    add-int v26, v21, v8

    :goto_a
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    .line 842
    const/16 v45, 0x0

    cmpl-float v45, v39, v45

    if-nez v45, :cond_17

    const/high16 v45, 0x3f800000    # 1.0f

    int-to-float v0, v8

    move/from16 v46, v0

    div-float v29, v45, v46

    .line 843
    .local v29, "ratio":F
    :goto_b
    aget v45, v10, v21

    mul-float v46, v17, v29

    add-float v45, v45, v46

    aput v45, v10, v21

    .line 844
    aget v45, v11, v21

    mul-float v46, v18, v29

    add-float v45, v45, v46

    aput v45, v11, v21

    .line 841
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 842
    .end local v29    # "ratio":F
    :cond_17
    aget v45, v15, v21

    div-float v29, v45, v39

    goto :goto_b

    .line 849
    .end local v3    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v8    # "colspan":I
    .end local v9    # "column":I
    .end local v17    # "extraMinWidth":F
    .end local v18    # "extraPrefWidth":F
    .end local v21    # "ii":I
    .end local v23    # "maxWidth":F
    .end local v25    # "minWidth":F
    .end local v26    # "nn":I
    .end local v28    # "prefWidth":F
    .end local v37    # "spannedMinWidth":F
    .end local v38    # "spannedPrefWidth":F
    .end local v39    # "totalExpandWidth":F
    :cond_18
    const/16 v41, 0x0

    .local v41, "uniformMinWidth":F
    const/16 v40, 0x0

    .line 850
    .local v40, "uniformMinHeight":F
    const/16 v43, 0x0

    .local v43, "uniformPrefWidth":F
    const/16 v42, 0x0

    .line 851
    .local v42, "uniformPrefHeight":F
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v6, :cond_1b

    .line 852
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 855
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    move-object/from16 v45, v0

    sget-object v46, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_19

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_19

    .line 856
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    move/from16 v46, v0

    add-float v19, v45, v46

    .line 857
    .restart local v19    # "hpadding":F
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move/from16 v45, v0

    aget v45, v10, v45

    sub-float v45, v45, v19

    move/from16 v0, v41

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v41

    .line 858
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move/from16 v45, v0

    aget v45, v11, v45

    sub-float v45, v45, v19

    move/from16 v0, v43

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v43

    .line 860
    .end local v19    # "hpadding":F
    :cond_19
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    move-object/from16 v45, v0

    sget-object v46, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_1a

    .line 861
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    move/from16 v46, v0

    add-float v44, v45, v46

    .line 862
    .restart local v44    # "vpadding":F
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v45, v0

    aget v45, v32, v45

    sub-float v45, v45, v44

    move/from16 v0, v40

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v40

    .line 863
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v45, v0

    aget v45, v33, v45

    sub-float v45, v45, v44

    move/from16 v0, v42

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v42

    .line 851
    .end local v44    # "vpadding":F
    :cond_1a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .line 868
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1b
    const/16 v45, 0x0

    cmpl-float v45, v43, v45

    if-gtz v45, :cond_1c

    const/16 v45, 0x0

    cmpl-float v45, v42, v45

    if-lez v45, :cond_1f

    .line 869
    :cond_1c
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v6, :cond_1f

    .line 870
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 871
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    const/16 v45, 0x0

    cmpl-float v45, v43, v45

    if-lez v45, :cond_1d

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    move-object/from16 v45, v0

    sget-object v46, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_1d

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1d

    .line 872
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    move/from16 v46, v0

    add-float v19, v45, v46

    .line 873
    .restart local v19    # "hpadding":F
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move/from16 v45, v0

    add-float v46, v41, v19

    aput v46, v10, v45

    .line 874
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move/from16 v45, v0

    add-float v46, v43, v19

    aput v46, v11, v45

    .line 876
    .end local v19    # "hpadding":F
    :cond_1d
    const/16 v45, 0x0

    cmpl-float v45, v42, v45

    if-lez v45, :cond_1e

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    move-object/from16 v45, v0

    sget-object v46, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_1e

    .line 877
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    move/from16 v45, v0

    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    move/from16 v46, v0

    add-float v44, v45, v46

    .line 878
    .restart local v44    # "vpadding":F
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v45, v0

    add-float v46, v40, v44

    aput v46, v32, v45

    .line 879
    iget v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v45, v0

    add-float v46, v42, v44

    aput v46, v33, v45

    .line 869
    .end local v44    # "vpadding":F
    :cond_1e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 885
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1f
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 886
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 887
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 888
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 889
    const/16 v20, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v0, v13, :cond_20

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    move/from16 v45, v0

    aget v46, v10, v20

    add-float v45, v45, v46

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    move/from16 v45, v0

    aget v46, v11, v20

    add-float v45, v45, v46

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 889
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 893
    :cond_20
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_21

    .line 894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    move/from16 v45, v0

    aget v46, v32, v20

    add-float v45, v45, v46

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    move/from16 v45, v0

    aget v46, v32, v20

    aget v47, v33, v20

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(FF)F

    move-result v46

    add-float v45, v45, v46

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 893
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 897
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v46

    add-float v19, v45, v46

    .line 898
    .restart local v19    # "hpadding":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v46

    add-float v44, v45, v46

    .line 899
    .restart local v44    # "vpadding":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    move/from16 v45, v0

    add-float v45, v45, v19

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    move/from16 v45, v0

    add-float v45, v45, v44

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 901
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    move/from16 v45, v0

    add-float v45, v45, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    move/from16 v46, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    move/from16 v45, v0

    add-float v45, v45, v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    move/from16 v46, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 903
    return-void
.end method

.method private drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 9
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 1185
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getDebug()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1198
    :cond_0
    return-void

    .line 1186
    :cond_1
    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1187
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1188
    const/4 v3, 0x0

    .local v3, "x":F
    const/4 v4, 0x0

    .line 1189
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1190
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v3

    .line 1191
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v4

    .line 1193
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v2, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1194
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1195
    .local v0, "debugRect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1196
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->x:F

    add-float/2addr v5, v3

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->y:F

    add-float/2addr v6, v4

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->width:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->height:F

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private endRow()V
    .locals 6

    .prologue
    .line 341
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 342
    .local v1, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    const/4 v3, 0x0

    .line 343
    .local v3, "rowColumns":I
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 344
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 345
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v4, :cond_1

    .line 348
    .end local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 349
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 350
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 351
    return-void

    .line 346
    .restart local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 343
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private ensureSize([FI)[F
    .locals 3
    .param p1, "array"    # [F
    .param p2, "size"    # I

    .prologue
    .line 696
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v2, p2, :cond_2

    :cond_0
    new-array p1, p2, [F

    .line 699
    .end local p1    # "array":[F
    :cond_1
    return-object p1

    .line 697
    .restart local p1    # "array":[F
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 698
    const/4 v2, 0x0

    aput v2, p1, v0

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private layout(FFFF)V
    .locals 64
    .param p1, "layoutX"    # F
    .param p2, "layoutY"    # F
    .param p3, "layoutWidth"    # F
    .param p4, "layoutHeight"    # F

    .prologue
    .line 908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 909
    .local v13, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v12, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 911
    .local v12, "cellCount":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 913
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v42

    .line 914
    .local v42, "padLeft":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float v33, v42, v2

    .line 915
    .local v33, "hpadding":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v43

    .line 916
    .local v43, "padTop":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float v60, v43, v2

    .line 918
    .local v60, "vpadding":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    move/from16 v20, v0

    .local v20, "columns":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    move/from16 v51, v0

    .line 919
    .local v51, "rows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    move-object/from16 v24, v0

    .local v24, "expandWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    move-object/from16 v23, v0

    .line 920
    .local v23, "expandHeight":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    move-object/from16 v19, v0

    .local v19, "columnWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    move-object/from16 v47, v0

    .line 922
    .local v47, "rowHeight":[F
    const/16 v56, 0x0

    .local v56, "totalExpandWidth":F
    const/16 v55, 0x0

    .line 923
    .local v55, "totalExpandHeight":F
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 924
    aget v2, v24, v34

    add-float v56, v56, v2

    .line 923
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 925
    :cond_1
    const/16 v34, 0x0

    :goto_1
    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_2

    .line 926
    aget v2, v23, v34

    add-float v55, v55, v2

    .line 925
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 930
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float v58, v2, v4

    .line 931
    .local v58, "totalGrowWidth":F
    const/4 v2, 0x0

    cmpl-float v2, v58, v2

    if-nez v2, :cond_5

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move-object/from16 v18, v0

    .line 945
    .local v18, "columnWeightedWidth":[F
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v57, v2, v4

    .line 946
    .local v57, "totalGrowHeight":F
    const/4 v2, 0x0

    cmpl-float v2, v57, v2

    if-nez v2, :cond_6

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move-object/from16 v50, v0

    .line 960
    .local v50, "rowWeightedHeight":[F
    :cond_4
    const/16 v34, 0x0

    :goto_2
    move/from16 v0, v34

    if-ge v0, v12, :cond_d

    .line 961
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 962
    .local v11, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v15, "column":I
    iget v0, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v46, v0

    .line 963
    .local v46, "row":I
    iget-object v8, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 965
    .local v8, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v52, 0x0

    .line 966
    .local v52, "spannedWeightedWidth":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 967
    .local v14, "colspan":I
    move/from16 v35, v15

    .local v35, "ii":I
    add-int v41, v35, v14

    .local v41, "nn":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v41

    if-ge v0, v1, :cond_7

    .line 968
    aget v2, v18, v35

    add-float v52, v52, v2

    .line 967
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 934
    .end local v8    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v14    # "colspan":I
    .end local v15    # "column":I
    .end local v18    # "columnWeightedWidth":[F
    .end local v35    # "ii":I
    .end local v41    # "nn":I
    .end local v46    # "row":I
    .end local v50    # "rowWeightedHeight":[F
    .end local v52    # "spannedWeightedWidth":F
    .end local v57    # "totalGrowHeight":F
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float v4, p3, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v0, v58

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 935
    .local v27, "extraWidth":F
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v18

    sput-object v18, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    .line 936
    .restart local v18    # "columnWeightedWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move-object/from16 v16, v0

    .local v16, "columnMinWidth":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    move-object/from16 v17, v0

    .line 937
    .local v17, "columnPrefWidth":[F
    const/16 v34, 0x0

    :goto_4
    move/from16 v0, v34

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 938
    aget v2, v17, v34

    aget v4, v16, v34

    sub-float v32, v2, v4

    .line 939
    .local v32, "growWidth":F
    div-float v31, v32, v58

    .line 940
    .local v31, "growRatio":F
    aget v2, v16, v34

    mul-float v4, v27, v31

    add-float/2addr v2, v4

    aput v2, v18, v34

    .line 937
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 949
    .end local v16    # "columnMinWidth":[F
    .end local v17    # "columnPrefWidth":[F
    .end local v27    # "extraWidth":F
    .end local v31    # "growRatio":F
    .end local v32    # "growWidth":F
    .restart local v57    # "totalGrowHeight":F
    :cond_6
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v50

    sput-object v50, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    .line 950
    .restart local v50    # "rowWeightedHeight":[F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v4, p4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v0, v57

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v26

    .line 951
    .local v26, "extraHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move-object/from16 v48, v0

    .local v48, "rowMinHeight":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    move-object/from16 v49, v0

    .line 952
    .local v49, "rowPrefHeight":[F
    const/16 v34, 0x0

    :goto_5
    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_4

    .line 953
    aget v2, v49, v34

    aget v4, v48, v34

    sub-float v30, v2, v4

    .line 954
    .local v30, "growHeight":F
    div-float v31, v30, v57

    .line 955
    .restart local v31    # "growRatio":F
    aget v2, v48, v34

    mul-float v4, v26, v31

    add-float/2addr v2, v4

    aput v2, v50, v34

    .line 952
    add-int/lit8 v34, v34, 0x1

    goto :goto_5

    .line 969
    .end local v26    # "extraHeight":F
    .end local v30    # "growHeight":F
    .end local v31    # "growRatio":F
    .end local v48    # "rowMinHeight":[F
    .end local v49    # "rowPrefHeight":[F
    .restart local v8    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .restart local v14    # "colspan":I
    .restart local v15    # "column":I
    .restart local v35    # "ii":I
    .restart local v41    # "nn":I
    .restart local v46    # "row":I
    .restart local v52    # "spannedWeightedWidth":F
    :cond_7
    aget v61, v50, v46

    .line 971
    .local v61, "weightedHeight":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v45

    .line 972
    .local v45, "prefWidth":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v44

    .line 973
    .local v44, "prefHeight":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v40

    .line 974
    .local v40, "minWidth":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v39

    .line 975
    .local v39, "minHeight":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v38

    .line 976
    .local v38, "maxWidth":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v37

    .line 977
    .local v37, "maxHeight":F
    cmpg-float v2, v45, v40

    if-gez v2, :cond_8

    move/from16 v45, v40

    .line 978
    :cond_8
    cmpg-float v2, v44, v39

    if-gez v2, :cond_9

    move/from16 v44, v39

    .line 979
    :cond_9
    const/4 v2, 0x0

    cmpl-float v2, v38, v2

    if-lez v2, :cond_a

    cmpl-float v2, v45, v38

    if-lez v2, :cond_a

    move/from16 v45, v38

    .line 980
    :cond_a
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-lez v2, :cond_b

    cmpl-float v2, v44, v37

    if-lez v2, :cond_b

    move/from16 v44, v37

    .line 982
    :cond_b
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    sub-float v2, v52, v2

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    sub-float/2addr v2, v4

    move/from16 v0, v45

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 983
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float v2, v61, v2

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v4

    move/from16 v0, v44

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 985
    const/4 v2, 0x1

    if-ne v14, v2, :cond_c

    aget v2, v19, v15

    move/from16 v0, v52

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v19, v15

    .line 986
    :cond_c
    aget v2, v47, v46

    move/from16 v0, v61

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v47, v46

    .line 960
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    .line 990
    .end local v8    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v14    # "colspan":I
    .end local v15    # "column":I
    .end local v35    # "ii":I
    .end local v37    # "maxHeight":F
    .end local v38    # "maxWidth":F
    .end local v39    # "minHeight":F
    .end local v40    # "minWidth":F
    .end local v41    # "nn":I
    .end local v44    # "prefHeight":F
    .end local v45    # "prefWidth":F
    .end local v46    # "row":I
    .end local v52    # "spannedWeightedWidth":F
    .end local v61    # "weightedHeight":F
    :cond_d
    const/4 v2, 0x0

    cmpl-float v2, v56, v2

    if-lez v2, :cond_11

    .line 991
    sub-float v25, p3, v33

    .line 992
    .local v25, "extra":F
    const/16 v34, 0x0

    :goto_6
    move/from16 v0, v34

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 993
    aget v2, v19, v34

    sub-float v25, v25, v2

    .line 992
    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    .line 994
    :cond_e
    const/16 v59, 0x0

    .line 995
    .local v59, "used":F
    const/16 v36, 0x0

    .line 996
    .local v36, "lastIndex":I
    const/16 v34, 0x0

    :goto_7
    move/from16 v0, v34

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 997
    aget v2, v24, v34

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_f

    .line 996
    :goto_8
    add-int/lit8 v34, v34, 0x1

    goto :goto_7

    .line 998
    :cond_f
    aget v2, v24, v34

    mul-float v2, v2, v25

    div-float v10, v2, v56

    .line 999
    .local v10, "amount":F
    aget v2, v19, v34

    add-float/2addr v2, v10

    aput v2, v19, v34

    .line 1000
    add-float v59, v59, v10

    .line 1001
    move/from16 v36, v34

    goto :goto_8

    .line 1003
    .end local v10    # "amount":F
    :cond_10
    aget v2, v19, v36

    sub-float v4, v25, v59

    add-float/2addr v2, v4

    aput v2, v19, v36

    .line 1005
    .end local v25    # "extra":F
    .end local v36    # "lastIndex":I
    .end local v59    # "used":F
    :cond_11
    const/4 v2, 0x0

    cmpl-float v2, v55, v2

    if-lez v2, :cond_15

    .line 1006
    sub-float v25, p4, v60

    .line 1007
    .restart local v25    # "extra":F
    const/16 v34, 0x0

    :goto_9
    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_12

    .line 1008
    aget v2, v47, v34

    sub-float v25, v25, v2

    .line 1007
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 1009
    :cond_12
    const/16 v59, 0x0

    .line 1010
    .restart local v59    # "used":F
    const/16 v36, 0x0

    .line 1011
    .restart local v36    # "lastIndex":I
    const/16 v34, 0x0

    :goto_a
    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_14

    .line 1012
    aget v2, v23, v34

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_13

    .line 1011
    :goto_b
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 1013
    :cond_13
    aget v2, v23, v34

    mul-float v2, v2, v25

    div-float v10, v2, v55

    .line 1014
    .restart local v10    # "amount":F
    aget v2, v47, v34

    add-float/2addr v2, v10

    aput v2, v47, v34

    .line 1015
    add-float v59, v59, v10

    .line 1016
    move/from16 v36, v34

    goto :goto_b

    .line 1018
    .end local v10    # "amount":F
    :cond_14
    aget v2, v47, v36

    sub-float v4, v25, v59

    add-float/2addr v2, v4

    aput v2, v47, v36

    .line 1022
    .end local v25    # "extra":F
    .end local v36    # "lastIndex":I
    .end local v59    # "used":F
    :cond_15
    const/16 v34, 0x0

    :goto_c
    move/from16 v0, v34

    if-ge v0, v12, :cond_19

    .line 1023
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1024
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1025
    .restart local v14    # "colspan":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_17

    .line 1022
    :cond_16
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    .line 1027
    :cond_17
    const/16 v27, 0x0

    .line 1028
    .restart local v27    # "extraWidth":F
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .restart local v15    # "column":I
    add-int v41, v15, v14

    .restart local v41    # "nn":I
    :goto_d
    move/from16 v0, v41

    if-ge v15, v0, :cond_18

    .line 1029
    aget v2, v18, v15

    aget v4, v19, v15

    sub-float/2addr v2, v4

    add-float v27, v27, v2

    .line 1028
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1030
    :cond_18
    const/4 v2, 0x0

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v6, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v27, v27, v2

    .line 1032
    int-to-float v2, v14

    div-float v27, v27, v2

    .line 1033
    const/4 v2, 0x0

    cmpl-float v2, v27, v2

    if-lez v2, :cond_16

    .line 1034
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-int v41, v15, v14

    :goto_e
    move/from16 v0, v41

    if-ge v15, v0, :cond_16

    .line 1035
    aget v2, v19, v15

    add-float v2, v2, v27

    aput v2, v19, v15

    .line 1034
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 1040
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v14    # "colspan":I
    .end local v15    # "column":I
    .end local v27    # "extraWidth":F
    .end local v41    # "nn":I
    :cond_19
    move/from16 v54, v33

    .local v54, "tableWidth":F
    move/from16 v53, v60

    .line 1041
    .local v53, "tableHeight":F
    const/16 v34, 0x0

    :goto_f
    move/from16 v0, v34

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    .line 1042
    aget v2, v19, v34

    add-float v54, v54, v2

    .line 1041
    add-int/lit8 v34, v34, 0x1

    goto :goto_f

    .line 1043
    :cond_1a
    const/16 v34, 0x0

    :goto_10
    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_1b

    .line 1044
    aget v2, v47, v34

    add-float v53, v53, v2

    .line 1043
    add-int/lit8 v34, v34, 0x1

    goto :goto_10

    .line 1047
    :cond_1b
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 1048
    .local v9, "align":I
    add-float v62, p1, v42

    .line 1049
    .local v62, "x":F
    and-int/lit8 v2, v9, 0x10

    if-eqz v2, :cond_1e

    .line 1050
    sub-float v2, p3, v54

    add-float v62, v62, v2

    .line 1054
    :cond_1c
    :goto_11
    add-float v63, p2, v43

    .line 1055
    .local v63, "y":F
    and-int/lit8 v2, v9, 0x4

    if-eqz v2, :cond_1f

    .line 1056
    sub-float v2, p4, v53

    add-float v63, v63, v2

    .line 1061
    :cond_1d
    :goto_12
    move/from16 v3, v62

    .local v3, "currentX":F
    move/from16 v22, v63

    .line 1062
    .local v22, "currentY":F
    const/16 v34, 0x0

    :goto_13
    move/from16 v0, v34

    if-ge v0, v12, :cond_28

    .line 1063
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1065
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    const/4 v5, 0x0

    .line 1066
    .local v5, "spannedCellWidth":F
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .restart local v15    # "column":I
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v41, v15, v2

    .restart local v41    # "nn":I
    :goto_14
    move/from16 v0, v41

    if-ge v15, v0, :cond_20

    .line 1067
    aget v2, v19, v15

    add-float/2addr v5, v2

    .line 1066
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    .line 1051
    .end local v3    # "currentX":F
    .end local v5    # "spannedCellWidth":F
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v15    # "column":I
    .end local v22    # "currentY":F
    .end local v41    # "nn":I
    .end local v63    # "y":F
    :cond_1e
    and-int/lit8 v2, v9, 0x8

    if-nez v2, :cond_1c

    .line 1052
    sub-float v2, p3, v54

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v62, v62, v2

    goto :goto_11

    .line 1057
    .restart local v63    # "y":F
    :cond_1f
    and-int/lit8 v2, v9, 0x2

    if-nez v2, :cond_1d

    .line 1058
    sub-float v2, p4, v53

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v63, v63, v2

    goto :goto_12

    .line 1068
    .restart local v3    # "currentX":F
    .restart local v5    # "spannedCellWidth":F
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .restart local v15    # "column":I
    .restart local v22    # "currentY":F
    .restart local v41    # "nn":I
    :cond_20
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v4

    sub-float/2addr v5, v2

    .line 1070
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v3, v2

    .line 1072
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v28

    .local v28, "fillX":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v29

    .line 1073
    .local v29, "fillY":F
    const/4 v2, 0x0

    cmpl-float v2, v28, v2

    if-lez v2, :cond_21

    .line 1074
    mul-float v2, v5, v28

    iget-object v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1075
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v38

    .line 1076
    .restart local v38    # "maxWidth":F
    const/4 v2, 0x0

    cmpl-float v2, v38, v2

    if-lez v2, :cond_21

    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    move/from16 v0, v38

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1078
    .end local v38    # "maxWidth":F
    :cond_21
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-lez v2, :cond_22

    .line 1079
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v47, v2

    mul-float v2, v2, v29

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v2, v4

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v4

    iget-object v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1080
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v37

    .line 1081
    .restart local v37    # "maxHeight":F
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-lez v2, :cond_22

    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    move/from16 v0, v37

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1084
    .end local v37    # "maxHeight":F
    :cond_22
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1085
    and-int/lit8 v2, v9, 0x8

    if-eqz v2, :cond_23

    .line 1086
    iput v3, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 1092
    :goto_15
    and-int/lit8 v2, v9, 0x2

    if-eqz v2, :cond_25

    .line 1093
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float v2, v2, v22

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1099
    :goto_16
    iget-boolean v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v2, :cond_27

    .line 1100
    move/from16 v3, v62

    .line 1101
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v47, v2

    add-float v22, v22, v2

    .line 1062
    :goto_17
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_13

    .line 1087
    :cond_23
    and-int/lit8 v2, v9, 0x10

    if-eqz v2, :cond_24

    .line 1088
    add-float v2, v3, v5

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float/2addr v2, v4

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_15

    .line 1090
    :cond_24
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float v2, v5, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_15

    .line 1094
    :cond_25
    and-int/lit8 v2, v9, 0x4

    if-eqz v2, :cond_26

    .line 1095
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v47, v2

    add-float v2, v2, v22

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v2, v4

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v4

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    goto :goto_16

    .line 1097
    :cond_26
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v47, v2

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v2, v4

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v2, v4

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v2, v2, v22

    iput v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    goto :goto_16

    .line 1103
    :cond_27
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v5

    add-float/2addr v3, v2

    goto :goto_17

    .line 1107
    .end local v5    # "spannedCellWidth":F
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v15    # "column":I
    .end local v28    # "fillX":F
    .end local v29    # "fillY":F
    .end local v41    # "nn":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v4, :cond_29

    .line 1139
    :goto_18
    return-void

    .line 1108
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    .line 1109
    move/from16 v21, v62

    .line 1110
    .end local v3    # "currentX":F
    .local v21, "currentX":F
    move/from16 v22, v63

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v2, v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v4, :cond_2b

    .line 1112
    :cond_2a
    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1113
    sub-float v5, v54, v33

    sub-float v6, v53, v60

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p0

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1115
    :cond_2b
    const/16 v34, 0x0

    :goto_19
    move/from16 v0, v34

    if-ge v0, v12, :cond_32

    .line 1116
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1119
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v2, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v4, :cond_2d

    .line 1120
    :cond_2c
    iget v3, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v5, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    iget v6, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1123
    :cond_2d
    const/4 v5, 0x0

    .line 1124
    .restart local v5    # "spannedCellWidth":F
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .restart local v15    # "column":I
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v41, v15, v2

    .restart local v41    # "nn":I
    :goto_1a
    move/from16 v0, v41

    if-ge v15, v0, :cond_2e

    .line 1125
    aget v2, v19, v15

    add-float/2addr v5, v2

    .line 1124
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    .line 1126
    :cond_2e
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v4

    sub-float/2addr v5, v2

    .line 1127
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float v3, v21, v2

    .line 1128
    .end local v21    # "currentX":F
    .restart local v3    # "currentX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v2, v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v4, :cond_30

    .line 1129
    :cond_2f
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float v4, v22, v2

    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v47, v2

    iget v6, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v2, v6

    iget v6, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float v6, v2, v6

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1133
    :cond_30
    iget-boolean v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v2, :cond_31

    .line 1134
    move/from16 v3, v62

    .line 1135
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v47, v2

    add-float v22, v22, v2

    .line 1115
    :goto_1b
    add-int/lit8 v34, v34, 0x1

    move/from16 v21, v3

    .end local v3    # "currentX":F
    .restart local v21    # "currentX":F
    goto :goto_19

    .line 1137
    .end local v21    # "currentX":F
    .restart local v3    # "currentX":F
    :cond_31
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v5

    add-float/2addr v3, v2

    goto :goto_1b

    .end local v3    # "currentX":F
    .end local v5    # "spannedCellWidth":F
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v15    # "column":I
    .end local v41    # "nn":I
    .restart local v21    # "currentX":F
    :cond_32
    move/from16 v3, v21

    .line 1139
    .end local v21    # "currentX":F
    .restart local v3    # "currentX":F
    goto/16 :goto_18
.end method

.method private obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    .prologue
    .line 93
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 94
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setLayout(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    const/4 v10, 0x0

    .line 193
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 194
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 196
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 197
    .local v2, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 198
    .local v1, "cellCount":I
    if-lez v1, :cond_6

    .line 200
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 201
    .local v6, "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-boolean v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v9, :cond_3

    .line 202
    iget v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v10, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 203
    iget v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    iput v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 209
    :goto_0
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    if-lez v9, :cond_0

    .line 211
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_0

    .line 212
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 213
    .local v8, "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v3, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v3, "column":I
    iget-object v9, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int v7, v3, v9

    .local v7, "nn":I
    :goto_2
    if-ge v3, v7, :cond_5

    .line 214
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    if-ne v3, v9, :cond_4

    .line 215
    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 225
    .end local v3    # "column":I
    .end local v5    # "i":I
    .end local v6    # "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v7    # "nn":I
    .end local v8    # "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_0
    :goto_3
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 227
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 228
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_1

    .line 229
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 230
    .local v4, "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 232
    .end local v4    # "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 234
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 236
    :cond_2
    return-object v0

    .line 205
    .restart local v6    # "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_3
    iput v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 206
    iget v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    goto :goto_0

    .line 213
    .restart local v3    # "column":I
    .restart local v5    # "i":I
    .restart local v7    # "nn":I
    .restart local v8    # "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 211
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 222
    .end local v3    # "column":I
    .end local v5    # "i":I
    .end local v6    # "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v7    # "nn":I
    .end local v8    # "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_6
    iput v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 223
    iput v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    goto :goto_3
.end method

.method public add(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "labelStyleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "colorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v3, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actors"    # [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 241
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 517
    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 153
    return-object p0
.end method

.method public background(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Ljava/lang/String;)V

    .line 159
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 543
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 544
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 523
    return-object p0
.end method

.method public clearChildren()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 294
    .local v2, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 295
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 296
    .local v1, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 297
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 294
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 299
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 300
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 301
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 302
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 303
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 304
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 306
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    .line 307
    return-void
.end method

.method public columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "column"    # I

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v2, p1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-object v0, v2

    .line 357
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :goto_0
    if-nez v0, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 360
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v1    # "i":I
    :cond_0
    move-object v0, v3

    .line 356
    goto :goto_0

    .line 363
    .restart local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 367
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0

    .line 365
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public bridge synthetic debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .prologue
    .line 559
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 560
    return-object p0
.end method

.method public debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "debug"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .prologue
    .line 600
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, p1, :cond_0

    .line 602
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 603
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne p1, v0, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    .line 608
    :cond_0
    :goto_1
    return-object p0

    .line 600
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_1
.end method

.method public debugActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 591
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 592
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 593
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 595
    :cond_0
    return-object p0
.end method

.method public bridge synthetic debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .prologue
    .line 564
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 565
    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 581
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 582
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 583
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 585
    :cond_0
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 572
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 573
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 575
    :cond_0
    return-object p0
.end method

.method public defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->validate()V

    .line 100
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 102
    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 103
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v2, :cond_1

    .line 104
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .local v1, "padLeft":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 106
    .local v0, "padBottom":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 109
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 110
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    .line 114
    .end local v0    # "padBottom":F
    .end local v1    # "padLeft":F
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 119
    :goto_1
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v3

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 117
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    goto :goto_1
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 126
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v5

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_0
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 5
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1157
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1158
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1159
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v4, :cond_2

    .line 1160
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1161
    const/4 v2, 0x0

    .local v2, "x":F
    const/4 v3, 0x0

    .local v3, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    .local v1, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v0

    .line 1162
    .local v0, "height":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_0

    .line 1163
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 1164
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    .line 1165
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 1166
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 1168
    :cond_0
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1170
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    .line 1174
    .end local v0    # "height":F
    .end local v1    # "width":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1179
    :goto_1
    return-void

    .line 1173
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_0

    .line 1176
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1177
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_1
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 1182
    return-void
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 373
    .local v1, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 374
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 375
    .local v0, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p1, :cond_0

    .line 377
    .end local v0    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :goto_1
    return-object v0

    .line 373
    .restart local v0    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCells()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    return v0
.end method

.method public getColumns()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 406
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 401
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 393
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 394
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 395
    .local v0, "height":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 396
    .end local v0    # "height":F
    :cond_1
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 386
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 387
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 388
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 389
    .end local v0    # "width":F
    :cond_1
    return v0
.end method

.method public getRow(F)I
    .locals 8
    .param p1, "y"    # F

    .prologue
    .line 664
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 665
    .local v1, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    const/4 v5, 0x0

    .line 666
    .local v5, "row":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v6

    add-float/2addr p1, v6

    .line 667
    const/4 v2, 0x0

    .local v2, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 668
    .local v4, "n":I
    if-nez v4, :cond_0

    const/4 v6, -0x1

    .line 675
    :goto_0
    return v6

    .line 669
    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    .line 673
    .local v0, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    move v3, v2

    .line 670
    .end local v0    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 671
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 672
    .restart local v0    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    .end local v0    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :goto_2
    move v6, v5

    .line 675
    goto :goto_0

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    :cond_4
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    return v0
.end method

.method public getTableDebug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 167
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v1, :cond_2

    .line 168
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    cmpg-float v1, p1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_0

    cmpg-float v1, p2, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-gez v1, :cond_0

    .line 171
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 188
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 189
    return-void
.end method

.method public layout()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v12

    .line 704
    .local v12, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v9

    .line 706
    .local v9, "height":F
    invoke-direct {p0, v13, v13, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout(FFFF)V

    .line 708
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 709
    .local v6, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget-boolean v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v13, :cond_1

    .line 710
    const/4 v10, 0x0

    .local v10, "i":I
    iget v11, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v11, "n":I
    :goto_0
    if-ge v10, v11, :cond_3

    .line 711
    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 712
    .local v5, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v13, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v2, v13

    .line 713
    .local v2, "actorWidth":F
    iget v13, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v1, v13

    .line 714
    .local v1, "actorHeight":F
    iget v13, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v3, v13

    .line 715
    .local v3, "actorX":F
    iget v13, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v9, v13

    sub-float v4, v13, v1

    .line 716
    .local v4, "actorY":F
    invoke-virtual {v5, v3, v4, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActorBounds(FFFF)V

    .line 717
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 718
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 710
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 721
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "actorHeight":F
    .end local v2    # "actorWidth":F
    .end local v3    # "actorX":F
    .end local v4    # "actorY":F
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v10    # "i":I
    .end local v11    # "n":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "i":I
    iget v11, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v11    # "n":I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 722
    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 723
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v1, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 724
    .restart local v1    # "actorHeight":F
    iget v13, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    sub-float v13, v9, v13

    sub-float v4, v13, v1

    .line 725
    .restart local v4    # "actorY":F
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActorY(F)V

    .line 726
    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 727
    .restart local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_2

    iget v13, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v14, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-virtual {v0, v13, v4, v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 721
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 731
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "actorHeight":F
    .end local v4    # "actorY":F
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v8

    .line 732
    .local v8, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v10, 0x0

    iget v11, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v10, v11, :cond_5

    .line 733
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 734
    .local v7, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v13, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v13, :cond_4

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v7    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 732
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 736
    :cond_5
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 536
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 537
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "pad"    # F

    .prologue
    .line 472
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 473
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F

    .prologue
    .line 477
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 478
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 479
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 480
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 482
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "pad"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .prologue
    .line 416
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 418
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 419
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 420
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 422
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .prologue
    .line 426
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 431
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 432
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 433
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 435
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padBottom"    # F

    .prologue
    .line 501
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 503
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .prologue
    .line 456
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 459
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padLeft"    # F

    .prologue
    .line 494
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 496
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .prologue
    .line 448
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 451
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padRight"    # F

    .prologue
    .line 508
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 510
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .prologue
    .line 464
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 467
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padTop"    # F

    .prologue
    .line 487
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 489
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .prologue
    .line 440
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 443
    return-object p0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 288
    :goto_0
    return v1

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 287
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 288
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    .line 313
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 314
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 315
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 316
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 317
    const/4 v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 318
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 319
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 321
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 322
    .local v0, "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 325
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 550
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 551
    return-object p0
.end method

.method public row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 332
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 10
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 140
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v8, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v7

    .local v7, "padTopOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v3

    .local v3, "padLeftOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v1

    .local v1, "padBottomOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v5

    .line 142
    .local v5, "padRightOld":F
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 143
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v6

    .local v6, "padTopNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v2

    .local v2, "padLeftNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v0

    .local v0, "padBottomNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v4

    .line 144
    .local v4, "padRightNew":F
    add-float v8, v7, v1

    add-float v9, v6, v0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    add-float v8, v3, v5

    add-float v9, v2, v4

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidateHierarchy()V

    goto :goto_0

    .line 146
    :cond_3
    cmpl-float v8, v7, v6

    if-nez v8, :cond_4

    cmpl-float v8, v3, v2

    if-nez v8, :cond_4

    cmpl-float v8, v1, v0

    if-nez v8, :cond_4

    cmpl-float v8, v5, v4

    if-eqz v8, :cond_0

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 136
    return-void
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 180
    return-void
.end method

.method public setDebug(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 555
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 556
    return-void

    .line 555
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 685
    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 680
    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "actors"    # [Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 277
    .local v2, "stack":Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    if-eqz p1, :cond_0

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 279
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    return-object v3
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 529
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 530
    return-object p0
.end method
