.class Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;
.super Ljava/lang/Object;
.source "Lzma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/Lzma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandLine"
.end annotation


# static fields
.field public static final kBenchmak:I = 0x2

.field public static final kDecode:I = 0x1

.field public static final kEncode:I


# instance fields
.field public Algorithm:I

.field public Command:I

.field public DictionarySize:I

.field public DictionarySizeIsDefined:Z

.field public Eos:Z

.field public Fb:I

.field public FbIsDefined:Z

.field public InFile:Ljava/lang/String;

.field public Lc:I

.field public Lp:I

.field public MatchFinder:I

.field public NumBenchmarkPasses:I

.field public OutFile:Ljava/lang/String;

.field public Pb:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Command:I

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->NumBenchmarkPasses:I

    .line 37
    const/high16 v0, 0x800000

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->DictionarySize:I

    .line 38
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->DictionarySizeIsDefined:Z

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lc:I

    .line 41
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lp:I

    .line 42
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Pb:I

    .line 44
    const/16 v0, 0x80

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Fb:I

    .line 45
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->FbIsDefined:Z

    .line 47
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Eos:Z

    .line 49
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Algorithm:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->MatchFinder:I

    return-void
.end method
