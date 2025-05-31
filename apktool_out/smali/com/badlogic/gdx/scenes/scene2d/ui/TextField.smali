.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "TextField.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;
    }
.end annotation


# static fields
.field private static final BACKSPACE:C = '\u0008'

.field private static final BULLET:C = '\u0095'

.field private static final DELETE:C = '\u007f'

.field protected static final ENTER_ANDROID:C = '\n'

.field protected static final ENTER_DESKTOP:C = '\r'

.field private static final TAB:C = '\t'

.field public static keyRepeatInitialTime:F

.field public static keyRepeatTime:F

.field private static final tmp1:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private blinkTime:F

.field private clipboard:Lcom/badlogic/gdx/utils/Clipboard;

.field protected cursor:I

.field cursorOn:Z

.field disabled:Z

.field protected displayText:Ljava/lang/CharSequence;

.field filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

.field focusTraversal:Z

.field protected final glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

.field protected final glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

.field protected hasSelection:Z

.field inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

.field keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

.field lastBlink:J

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

.field private maxLength:I

.field private messageText:Ljava/lang/String;

.field onlyFontChars:Z

.field private passwordBuffer:Ljava/lang/StringBuilder;

.field private passwordCharacter:C

.field passwordMode:Z

.field renderOffset:F

.field protected selectionStart:I

.field private selectionWidth:F

.field private selectionX:F

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field protected text:Ljava/lang/String;

.field private textHAlign:I

.field protected textHeight:F

.field protected textOffset:F

.field private visibleTextEnd:I

.field private visibleTextStart:I

.field protected writeEnters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    .line 72
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    .line 73
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 109
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 89
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    .line 90
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    .line 95
    const/16 v0, 0x95

    iput-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    .line 102
    const v0, 0x3ea3d70a    # 0.32f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    .line 103
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 106
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    .line 117
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialize()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSize(FF)V

    .line 122
    return-void
.end method

.method private blink()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 371
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->isContinuousRendering()Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 376
    .local v0, "time":J
    iget-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 377
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 378
    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    goto :goto_0

    .line 377
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .locals 11
    .param p2, "best"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .param p3, "bestCoords"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "currentCoords"    # Lcom/badlogic/gdx/math/Vector2;
    .param p5, "up"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "actors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    iget v9, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v9, "n":I
    :goto_0
    if-ge v8, v9, :cond_8

    .line 469
    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 470
    .local v6, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-ne v6, p0, :cond_1

    .line 468
    .end local v6    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 471
    .restart local v6    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    instance-of v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eqz v0, :cond_7

    move-object v10, v6

    .line 472
    check-cast v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 473
    .local v10, "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 475
    .local v7, "actorCoords":Lcom/badlogic/gdx/math/Vector2;
    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_2
    xor-int v0, v0, p5

    if-eqz v0, :cond_0

    .line 476
    if-eqz p2, :cond_4

    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    :goto_3
    xor-int v0, v0, p5

    if-eqz v0, :cond_0

    :cond_4
    move-object p2, v6

    .line 478
    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 479
    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 475
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 476
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 482
    .end local v7    # "actorCoords":Lcom/badlogic/gdx/math/Vector2;
    .end local v10    # "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    :cond_7
    instance-of v0, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    .line 483
    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v6    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object p2

    goto/16 :goto_1

    .line 485
    :cond_8
    return-object p2
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 523
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 527
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    .line 528
    return-void
.end method

.method protected calculateOffsets()V
    .locals 14

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getWidth()F

    move-result v11

    .line 206
    .local v11, "visibleWidth":F
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v12

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v13, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v13

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 209
    :cond_0
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    .line 210
    .local v8, "position":F
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float v0, v8, v12

    .line 211
    .local v0, "distance":F
    const/4 v12, 0x0

    cmpg-float v12, v0, v12

    if-gtz v12, :cond_9

    .line 212
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-lez v12, :cond_8

    .line 213
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    neg-float v12, v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 221
    :cond_1
    :goto_0
    const/4 v12, 0x0

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 222
    const/4 v12, 0x0

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 223
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 224
    .local v9, "start":F
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v12, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 225
    .local v1, "glyphCount":I
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v12, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 226
    .local v2, "glyphPositions":[F
    const/4 v10, 0x0

    .line 227
    .local v10, "startPos":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 228
    aget v12, v2, v3

    cmpl-float v12, v12, v9

    if-ltz v12, :cond_a

    .line 229
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 230
    aget v10, v2, v3

    .line 231
    sub-float v12, v10, v9

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 237
    :cond_2
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 238
    :goto_2
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-gt v12, v13, :cond_3

    .line 239
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    aget v12, v2, v12

    sub-float/2addr v12, v10

    cmpl-float v12, v12, v11

    if-lez v12, :cond_b

    .line 241
    :cond_3
    const/4 v12, 0x0

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 244
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v12, :cond_4

    .line 245
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 246
    .local v6, "minIndex":I
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 247
    .local v4, "maxIndex":I
    aget v12, v2, v6

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 248
    .local v7, "minX":F
    aget v12, v2, v4

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    aget v13, v2, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 249
    .local v5, "maxX":F
    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    .line 250
    sub-float v12, v5, v7

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    .line 253
    .end local v4    # "maxIndex":I
    .end local v5    # "maxX":F
    .end local v6    # "minIndex":I
    .end local v7    # "minX":F
    :cond_4
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_7

    .line 254
    :cond_5
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    aget v12, v2, v12

    sub-float/2addr v12, v10

    sub-float v12, v11, v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 255
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 256
    :cond_6
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v12, :cond_7

    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    .line 258
    :cond_7
    return-void

    .line 215
    .end local v1    # "glyphCount":I
    .end local v2    # "glyphPositions":[F
    .end local v3    # "i":I
    .end local v9    # "start":F
    .end local v10    # "startPos":F
    :cond_8
    const/4 v12, 0x0

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    goto/16 :goto_0

    .line 216
    :cond_9
    cmpl-float v12, v0, v11

    if-lez v12, :cond_1

    .line 217
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float v13, v0, v11

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    goto/16 :goto_0

    .line 227
    .restart local v1    # "glyphCount":I
    .restart local v2    # "glyphPositions":[F
    .restart local v3    # "i":I
    .restart local v9    # "start":F
    .restart local v10    # "startPos":F
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 238
    :cond_b
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    goto/16 :goto_2
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 580
    return-void
.end method

.method protected continueCursor(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 664
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 665
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v1

    return v1
.end method

.method public copy()V
    .locals 5

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method protected createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-object v0
.end method

.method public cut()V
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    .line 394
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 396
    :cond_0
    return-void
.end method

.method delete()I
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v0

    return v0
.end method

.method delete(IIZ)I
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "updateText"    # Z

    .prologue
    .line 438
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 439
    .local v1, "minIndex":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 440
    .local v0, "maxIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 442
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 444
    return v1

    .line 440
    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method delete(Z)I
    .locals 2
    .param p1, "updateText"    # Z

    .prologue
    .line 434
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(IIZ)I

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 27
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v24

    .line 263
    .local v24, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_4

    const/16 v21, 0x1

    .line 265
    .local v21, "focused":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v11, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 266
    .local v11, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v22, v0

    .line 268
    .local v22, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 269
    .local v9, "selection":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v20, v0

    .line 270
    .local v20, "cursorPatch":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 273
    .local v2, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    .line 274
    .local v19, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getX()F

    move-result v4

    .line 275
    .local v4, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getY()F

    move-result v5

    .line 276
    .local v5, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getWidth()F

    move-result v6

    .line 277
    .local v6, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getHeight()F

    move-result v7

    .line 279
    .local v7, "height":F
    move-object/from16 v0, v19

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, v19

    iget v8, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, v19

    iget v10, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, v19

    iget v12, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v12, v12, p2

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v8, v10, v12}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 280
    const/16 v18, 0x0

    .line 281
    .local v18, "bgLeftWidth":F
    if-eqz v2, :cond_0

    move-object/from16 v3, p1

    .line 282
    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 283
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v18

    .line 286
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F

    move-result v25

    .line 287
    .local v25, "textY":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    .line 289
    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    .line 290
    add-float v12, v4, v18

    add-float v13, v5, v25

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 293
    :cond_1
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    neg-float v0, v3

    move/from16 v26, v0

    .line 294
    .local v26, "yOffset":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 295
    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_a

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v12, v12, p2

    invoke-virtual {v11, v3, v8, v10, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 301
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object/from16 v23, v0

    .line 302
    .local v23, "messageFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    add-float v8, v4, v18

    add-float v10, v5, v25

    add-float v10, v10, v26

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v8, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 308
    .end local v23    # "messageFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_2
    :goto_6
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-nez v3, :cond_3

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blink()V

    .line 310
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-eqz v3, :cond_3

    if-eqz v20, :cond_3

    .line 311
    add-float v16, v4, v18

    add-float v17, v5, v25

    move-object/from16 v12, p0

    move-object/from16 v13, v20

    move-object/from16 v14, p1

    move-object v15, v11

    invoke-virtual/range {v12 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 314
    :cond_3
    return-void

    .line 263
    .end local v2    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "width":F
    .end local v7    # "height":F
    .end local v9    # "selection":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v11    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v18    # "bgLeftWidth":F
    .end local v19    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v20    # "cursorPatch":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v21    # "focused":Z
    .end local v22    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v25    # "textY":F
    .end local v26    # "yOffset":F
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 266
    .restart local v11    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .restart local v21    # "focused":Z
    :cond_5
    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v22, v0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 270
    .restart local v9    # "selection":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v20    # "cursorPatch":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v22    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_7
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto/16 :goto_2

    .line 293
    .restart local v2    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    .restart local v6    # "width":F
    .restart local v7    # "height":F
    .restart local v18    # "bgLeftWidth":F
    .restart local v19    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v25    # "textY":F
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 300
    .restart local v26    # "yOffset":F
    :cond_a
    const v3, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    const v10, 0x3f333333    # 0.7f

    move/from16 v0, p2

    invoke-virtual {v11, v3, v8, v10, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v23, v11

    .line 301
    goto/16 :goto_5

    .line 305
    :cond_c
    move-object/from16 v0, v22

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, v22

    iget v8, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, v22

    iget v10, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, v22

    iget v12, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v12, v12, p2

    invoke-virtual {v11, v3, v8, v10, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 306
    add-float v3, v4, v18

    add-float v8, v5, v25

    add-float v8, v8, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    goto/16 :goto_6
.end method

.method protected drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 6
    .param p1, "cursorPatch"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 339
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr v0, p4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    sub-float v0, p5, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float v3, v0, v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 341
    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 6
    .param p1, "selection"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 330
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    add-float/2addr v0, p4

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float v2, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    sub-float v0, p5, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float v3, v0, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 332
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 335
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float v3, p3, v0

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    move-object v0, p2

    move-object v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 336
    return-void
.end method

.method public getCursorPosition()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return v0
.end method

.method public getDefaultInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    return-object v0
.end method

.method public getOnscreenKeyboard()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 3

    .prologue
    .line 611
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    .line 612
    .local v0, "prefHeight":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 616
    :cond_0
    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 607
    const/high16 v0, 0x43160000    # 150.0f

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFieldFilter()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    return-object v0
.end method

.method protected getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .locals 6
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 317
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getHeight()F

    move-result v1

    .line 318
    .local v1, "height":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    div-float/2addr v3, v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    add-float v2, v3, v4

    .line 319
    .local v2, "textY":F
    if-eqz p2, :cond_0

    .line 320
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    .line 321
    .local v0, "bottom":F
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float v3, v1, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v5

    add-float/2addr v3, v2

    add-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v2, v3

    .line 325
    .end local v0    # "bottom":F
    :goto_0
    return v2

    .line 323
    :cond_0
    div-float v3, v1, v5

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v2, v3

    goto :goto_0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    .line 126
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 127
    return-void
.end method

.method insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "to"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    return v0
.end method

.method public isPasswordMode()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    return v0
.end method

.method protected isWordCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 147
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_3

    const/16 v0, 0x39

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected letterUnderCursor(F)I
    .locals 6
    .param p1, "x"    # F

    .prologue
    .line 134
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr v4, v5

    sub-float/2addr p1, v4

    .line 135
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v4, -0x1

    .line 136
    .local v2, "index":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 137
    .local v0, "glyphPositions":[F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 138
    aget v4, v0, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    .line 139
    add-int/lit8 v2, v1, -0x1

    .line 143
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .line 137
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected moveCursor(ZZ)V
    .locals 3
    .param p1, "forward"    # Z
    .param p2, "jump"    # Z

    .prologue
    const/4 v0, 0x0

    .line 656
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 657
    .local v1, "limit":I
    :goto_0
    if-eqz p1, :cond_3

    .line 658
    .local v0, "charOffset":I
    :cond_0
    :goto_1
    if-eqz p1, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ge v2, v1, :cond_1

    :goto_2
    if-eqz p2, :cond_1

    .line 659
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->continueCursor(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    :cond_1
    return-void

    .end local v0    # "charOffset":I
    .end local v1    # "limit":I
    :cond_2
    move v1, v0

    .line 656
    goto :goto_0

    .line 657
    .restart local v1    # "limit":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 658
    .restart local v0    # "charOffset":I
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-le v2, v1, :cond_1

    goto :goto_2
.end method

.method public next(Z)V
    .locals 10
    .param p1, "up"    # Z

    .prologue
    const/4 v2, 0x0

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x1

    .line 450
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v6

    .line 451
    .local v6, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v6, :cond_0

    .line 465
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 453
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v7

    .line 454
    .local v7, "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    if-nez v7, :cond_1

    .line 455
    if-eqz p1, :cond_2

    .line 456
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v8, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 459
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v7

    .line 461
    :cond_1
    if-eqz v7, :cond_3

    .line 462
    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    .line 458
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v9, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 464
    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    goto :goto_0
.end method

.method paste()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    .line 401
    return-void
.end method

.method paste(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "onlyFontChars"    # Z

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 407
    .local v4, "textLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->withinMaxLength(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 419
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, v5, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 420
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 421
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto :goto_0

    .line 409
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 410
    .local v1, "c":C
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    if-eqz v5, :cond_4

    const/16 v5, 0xa

    if-eq v1, v5, :cond_7

    const/16 v5, 0xd

    if-eq v1, v5, :cond_7

    .line 411
    :cond_4
    if-eqz p2, :cond_6

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 407
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    :cond_6
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    invoke-interface {v5, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 414
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 575
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    .line 576
    return-void
.end method

.method public setAlignment(I)V
    .locals 1
    .param p1, "alignment"    # I

    .prologue
    .line 621
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 622
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    .line 623
    :cond_1
    return-void
.end method

.method public setBlinkTime(F)V
    .locals 0
    .param p1, "blinkTime"    # F

    .prologue
    .line 644
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    .line 645
    return-void
.end method

.method public setClipboard(Lcom/badlogic/gdx/utils/Clipboard;)V
    .locals 0
    .param p1, "clipboard"    # Lcom/badlogic/gdx/utils/Clipboard;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    .line 604
    return-void
.end method

.method public setCursorPosition(I)V
    .locals 2
    .param p1, "cursorPosition"    # I

    .prologue
    .line 584
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cursorPosition must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 587
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 648
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    .line 649
    return-void
.end method

.method public setFocusTraversal(Z)V
    .locals 0
    .param p1, "focusTraversal"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    .line 509
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    .line 178
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageText"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setOnlyFontChars(Z)V
    .locals 0
    .param p1, "onlyFontChars"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    .line 189
    return-void
.end method

.method public setOnscreenKeyboard(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 600
    return-void
.end method

.method public setPasswordCharacter(C)V
    .locals 1
    .param p1, "passwordCharacter"    # C

    .prologue
    .line 639
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    .line 640
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 641
    :cond_0
    return-void
.end method

.method public setPasswordMode(Z)V
    .locals 0
    .param p1, "passwordMode"    # Z

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    .line 629
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 630
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 555
    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionStart must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_0
    if-gez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionEnd must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 558
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 559
    if-ne p2, p1, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 572
    :goto_0
    return-void

    .line 563
    :cond_2
    if-ge p2, p1, :cond_3

    .line 564
    move v0, p2

    .line 565
    .local v0, "temp":I
    move p2, p1

    .line 566
    move p1, v0

    .line 569
    .end local v0    # "temp":I
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 570
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 571
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto :goto_0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 3
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .prologue
    .line 192
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 194
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    .line 195
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->invalidateHierarchy()V

    .line 196
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 531
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 535
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 536
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto :goto_0
.end method

.method public setTextFieldFilter(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    .line 500
    return-void
.end method

.method public setTextFieldListener(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    .line 495
    return-void
.end method

.method updateDisplayText()V
    .locals 10

    .prologue
    .line 344
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 345
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 346
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 348
    .local v6, "textLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 350
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 351
    .local v1, "c":C
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1    # "c":C
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .restart local v1    # "c":C
    :cond_0
    const/16 v1, 0x20

    goto :goto_1

    .line 353
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "newDisplayText":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-eqz v7, :cond_6

    iget-char v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 356
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    .line 357
    :cond_2
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v6, :cond_5

    .line 358
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 363
    :cond_3
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    iput-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    .line 366
    :goto_2
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 367
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_4

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 368
    :cond_4
    return-void

    .line 360
    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    :goto_3
    if-ge v3, v6, :cond_3

    .line 361
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    iget-char v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 365
    :cond_6
    iput-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method withinMaxLength(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method wordUnderCursor(F)[I
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->letterUnderCursor(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->wordUnderCursor(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected wordUnderCursor(I)[I
    .locals 7
    .param p1, "at"    # I

    .prologue
    .line 151
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 152
    .local v4, "text":Ljava/lang/String;
    move v3, p1

    .local v3, "start":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "right":I
    const/4 v1, 0x0

    .local v1, "left":I
    move v0, v3

    .line 153
    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    move v2, v0

    .line 159
    :cond_0
    add-int/lit8 v0, v3, -0x1

    :goto_1
    const/4 v5, -0x1

    if-le v0, v5, :cond_1

    .line 160
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 161
    add-int/lit8 v1, v0, 0x1

    .line 165
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    return-object v5

    .line 153
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
