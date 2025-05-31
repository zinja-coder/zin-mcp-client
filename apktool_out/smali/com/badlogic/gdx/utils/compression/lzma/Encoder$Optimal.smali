.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Optimal"
.end annotation


# instance fields
.field public BackPrev:I

.field public BackPrev2:I

.field public Backs0:I

.field public Backs1:I

.field public Backs2:I

.field public Backs3:I

.field public PosPrev:I

.field public PosPrev2:I

.field public Prev1IsChar:Z

.field public Prev2:Z

.field public Price:I

.field public State:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsShortRep()Z
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MakeAsChar()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 272
    return-void
.end method

.method public MakeAsShortRep()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 277
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 278
    return-void
.end method
