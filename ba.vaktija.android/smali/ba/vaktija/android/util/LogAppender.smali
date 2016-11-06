.class public Lba/vaktija/android/util/LogAppender;
.super Ljava/lang/Object;
.source "LogAppender.java"


# static fields
.field private static final MAX_FILE_SIZE:J = 0x200000L

.field private static instance:Lba/vaktija/android/util/LogAppender;


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/util/LogAppender;->mExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lba/vaktija/android/util/LogAppender;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/util/LogAppender;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/util/LogAppender;

    .prologue
    .line 17
    iget-object v0, p0, Lba/vaktija/android/util/LogAppender;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getInstance()Lba/vaktija/android/util/LogAppender;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lba/vaktija/android/util/LogAppender;->instance:Lba/vaktija/android/util/LogAppender;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lba/vaktija/android/util/LogAppender;

    invoke-direct {v0}, Lba/vaktija/android/util/LogAppender;-><init>()V

    sput-object v0, Lba/vaktija/android/util/LogAppender;->instance:Lba/vaktija/android/util/LogAppender;

    .line 28
    :cond_0
    sget-object v0, Lba/vaktija/android/util/LogAppender;->instance:Lba/vaktija/android/util/LogAppender;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lba/vaktija/android/util/LogAppender;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lba/vaktija/android/util/LogAppender$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lba/vaktija/android/util/LogAppender$1;-><init>(Lba/vaktija/android/util/LogAppender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized appendNewLines(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lba/vaktija/android/util/LogAppender;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lba/vaktija/android/util/LogAppender$2;

    invoke-direct {v1, p0, p1}, Lba/vaktija/android/util/LogAppender$2;-><init>(Lba/vaktija/android/util/LogAppender;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
