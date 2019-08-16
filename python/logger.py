import logging

# Create and configure logger
LOG_FORMAT = '%(levelname)s %(asctime)s - %(message)s'
logging.basicConfig(filename='./log.log',
                        level=logging.ERROR,
                        format=LOG_FORMAT,
                        filemode='w')

logger = logging.getLogger()

# Test messages:
logger.debug("This is normal debug message - level 0")
logger.info("Just an information type of message - level 10")
logger.warning("This would be a warning message - level 20")
logger.error("ERROR message - 30")
logger.critical("BOOM!!!")
